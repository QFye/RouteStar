import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

/* 主页面底部选项栏 */

class HomePageTabview extends StatefulWidget {
  final List<String>? tabIconPaths;
  final Color? activeColor;
  final Color? backgroundColor;
  final Function(int index)? onPress;
  int selectedIndex;

  HomePageTabview(
      {Key? key,
      @required this.tabIconPaths,
      this.activeColor = Colors.blue,
      this.backgroundColor = Colors.white,
      this.onPress,
      this.selectedIndex = 0})
      : assert(tabIconPaths!.length <= 5),
        assert(selectedIndex <= tabIconPaths!.length - 1),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageTabviewWidgetState();
  }
}

class HomePageTabviewWidgetState extends State<HomePageTabview> {
  List<Widget> _renderTabButtons() {
    return widget.tabIconPaths!.asMap().keys.map<Widget>((idx) {
      String asset = widget.tabIconPaths![idx];
      return Container(
        width: Get.width / widget.tabIconPaths!.length,
        height: double.infinity,
        child: IconButton(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          icon: SvgPicture.asset(asset,
              color: widget.selectedIndex == idx
                  ? widget.activeColor
                  : Colors.grey),
          onPressed: () {
            if (idx != widget.selectedIndex) {
              if (widget.onPress != null) {
                widget.onPress!(idx);
              }
              setState(() {
                widget.selectedIndex = idx;
              });
            }
          },
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _renderTabButtons(),
      ),
    );
  }
}

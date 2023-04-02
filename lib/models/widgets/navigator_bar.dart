import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

enum NavigatorBarCloseType { close, back, empty }

/* 导航条 */
class NavigatorBar extends StatelessWidget implements PreferredSizeWidget {
  final NavigatorBarCloseType? navigatorBarCloseType;
  final double? barHeight;
  final Color? backgroundColor;
  final Color? fontColor;
  final String? title;
  final Function? closeCallBack;

  const NavigatorBar(
      {Key? key,
      this.navigatorBarCloseType = NavigatorBarCloseType.back,
      this.barHeight = 55.0,
      this.backgroundColor = Colors.grey,
      this.fontColor = Colors.blue,
      this.title,
      this.closeCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Stack(
        children: [
          Positioned(
              child: Align(
            alignment: Alignment.center,
            child: Text(
              title ?? "",
              style: TextStyle(
                  fontSize: 22, color: fontColor, fontWeight: FontWeight.w600),
            ),
          )),
          navigatorBarCloseType != NavigatorBarCloseType.empty
              ? Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                      width: barHeight,
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: SvgPicture.asset(
                            navigatorBarCloseType == NavigatorBarCloseType.back
                                ? "assets/icons/back_icon.svg"
                                : "assets/icons/close_icon.svg",
                            width: 40,
                            height: 40),
                        onPressed: () {
                          closeCallBack?.call();
                          Get.back();
                        },
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(EdgeInsets.zero)),
                      )))
              : const SizedBox.shrink()
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(barHeight!);
}

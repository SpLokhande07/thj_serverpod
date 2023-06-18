import 'package:flutter/material.dart';
import 'package:thj_admin/constants.dart';

class RoundIcon extends StatelessWidget {
  IconData icon;
  Color? backgroundColor;
  Color? iconColor;
  double? width;
  double? height;
  double? iconSize;
  RoundIcon(
      {Key? key,
      required this.icon,
      this.backgroundColor,
      this.iconColor,
      this.iconSize,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // width: width,
      // height: height,
      margin: const EdgeInsets.all(2),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: backgroundColor ?? kDarkBlueColor),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize ?? 25,
      ),
    );
  }
}

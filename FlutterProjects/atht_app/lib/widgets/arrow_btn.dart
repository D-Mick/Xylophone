import 'package:atht_app/constants/atht_colors.dart';
import 'package:flutter/material.dart';

class AthtArrowBtn extends StatelessWidget {
  final Color? color;
  final double? size;
  final Function()? onTap;

  const AthtArrowBtn({Key? key, this.color, this.size, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        Icons.arrow_forward_ios_sharp,
        color: color,
        size: size,
      ),
    );
  }
}
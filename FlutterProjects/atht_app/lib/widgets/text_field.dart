import 'package:atht_app/constants/atht_colors.dart';
import 'package:atht_app/utils/styles.dart';
import 'package:flutter/material.dart';

class AthtTextField extends StatelessWidget {
  final String? hintText;
  final TextInputType? textInputType;
  final Function(String value)? onChanged;
  final bool iconStatus;
  final Widget? icon;

  AthtTextField({this.hintText, this.textInputType, this.onChanged, required this.iconStatus, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.grey.shade100
      ),
      child: TextFormField(
        style: textStyle(color: AthtColors.colorHintText, size: 17),
        obscureText: iconStatus,
        decoration: InputDecoration(
          suffixIcon: icon,
          border: InputBorder.none,
          hintText: hintText,
          fillColor: Colors.grey.shade700,
        ),
        keyboardType: textInputType,
        onChanged: onChanged,
      ),
    );
  }
}

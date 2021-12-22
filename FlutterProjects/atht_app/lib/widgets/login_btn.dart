import 'package:atht_app/constants/atht_colors.dart';
import 'package:atht_app/constants/atht_strings.dart';
import 'package:atht_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'arrow_btn.dart';

class AthtLoginBtn extends StatelessWidget {
  final Function()? onTap;
  const AthtLoginBtn({
    Key? key, this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        decoration: BoxDecoration(
          color: AthtColors.colorDarkBlue,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AthtStrings.logIn,
                style: textStyle(
                    color: AthtColors.colorWhite,
                    fontFamily: 'Poppins-Regular',
                    weight: 7,
                    size: 18
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AthtColors.colorWhite),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: AthtArrowBtn(
                  size: 18,
                  color: AthtColors.colorBlack,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
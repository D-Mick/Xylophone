import 'package:atht_app/constants/atht_colors.dart';
import 'package:atht_app/constants/atht_strings.dart';
import 'package:atht_app/screens/bottom_nav_screen.dart';
import 'package:atht_app/utils/styles.dart';
import 'package:atht_app/widgets/login_btn.dart';
import 'package:atht_app/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHidePsd = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AthtColors.scaffoldBgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 70, horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  AthtStrings.welcomeBack,
                  textAlign: TextAlign.center,
                  style: textStyle(
                    color: AthtColors.colorBlack,
                    fontFamily: 'Poppins-Regular',
                    weight: 7,
                    size: 35
                  ),
                ),
              ),
              SizedBox(height: 20,),
              AthtTextField(
                iconStatus: false,
                hintText: AthtStrings.email,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10,),
              AthtTextField(
                iconStatus: isHidePsd,
                icon: IconButton(
                  icon: isHidePsd == true
                      ? Icon(
                    Icons.visibility_off,
                    color: AthtColors.colorHintText,
                  )
                      : Icon(
                    Icons.visibility,
                    color: AthtColors.colorHintText,
                  ),
                  onPressed: () {
                    setState(() {
                      isHidePsd = !isHidePsd;
                    });
                  },
                ),
                hintText: AthtStrings.password,
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 10,),
              Text(
                AthtStrings.forgotPassword,
                style: textStyle(
                    color: AthtColors.colorHintText,
                    fontFamily: 'Poppins-Regular',
                    weight: 5,
                    size: 16
                ),
              ),
              SizedBox(height: 30,),
              AthtLoginBtn(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePageScreen()));
              },),
              Spacer(),
              Center(
                child: Text(
                  AthtStrings.dontHaveAcc,
                  style: textStyle(
                      color: AthtColors.colorBlack,
                      fontFamily: 'Poppins-Regular',
                      weight: 6,
                      size: 18
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




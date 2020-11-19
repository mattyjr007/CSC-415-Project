//import 'package:animated_splash/animated_splash.dart';
import 'package:lawyerpp/ui/register/signup.dart';
import 'package:lawyerpp/ui/welcome_page.dart';
import 'dart:async';
import 'package:lawyerpp/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';

class Splash extends StatefulWidget {
  static const String id = 'splash_screen';
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  //it naivgate before the page load by calling the method.
  @override
  void initState(){
    super.initState();
    navigate();
  }

  void navigate(){
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.of(context).pushReplacementNamed(WelcomePage.id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor:kBackgroundColor,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/logo.png',
                    width: SizeConfig.screenWidth * 0.25,
                    height: SizeConfig.screenWidth,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ],
        )
      )

    );
  }
}

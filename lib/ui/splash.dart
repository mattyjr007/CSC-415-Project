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

  /// Navigates to the welcome page after 3 seconds
  void navigate(){
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.of(context).pushReplacementNamed(WelcomePage.id);
      },
    );
  }

  @override
  void initState(){
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Image.asset('assets/logo.png',
          width: 106,
          height: 97,
          fit: BoxFit.contain,
        )
      )
    );
  }
}

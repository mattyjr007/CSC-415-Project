import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';

class WelcomePage extends StatefulWidget {
  static const String id = 'welcomepage';
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context); // calling the attributes of these class.
    return Scaffold(
      body: Container(
          width: SizeConfig.screenWidth ,
          height: SizeConfig.screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.contain,
            )
        ),
      ),
    );
  }
}

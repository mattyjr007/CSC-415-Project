import 'package:flutter/material.dart';
import 'package:lawyerpp/ui/register/login.dart';
import 'package:lawyerpp/ui/register/signup.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';

class WelcomePage extends StatefulWidget {

  static const String id = 'welcomepage';

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage( 'assets/images/background.jpg'),
            fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Container(
            height: SizeConfig.screenHeight * 0.75,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Welcome to LAWYERPP',
                          style: TextStyle(
                            fontSize: 22.65,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Raleway'
                          ),
                        ),
                        SizedBox(height: 26),
                        Text(
                          "Don't Panic! Just LAWYERPP",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                            fontFamily: 'Raleway'
                          ),
                        ),
                        SizedBox(height: 84),
                        Container(
                            width: SizeConfig.screenWidth - 30,
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, SignUp.id);
                                  },
                                  child: Container(
                                    width: SizeConfig.screenWidth,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Get Started',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          fontFamily: 'Raleway'
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 18),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, Login.id);
                                  },
                                  child: Container(
                                    width: SizeConfig.screenWidth,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4)
                                      ),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1,
                                      )
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Sign in',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontFamily: 'Raleway'
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

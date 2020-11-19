import 'package:flutter/material.dart';
import 'package:lawyerpp/ui/splash.dart';
import 'package:lawyerpp/ui/register/signup.dart';
import 'package:lawyerpp/ui/welcome_page.dart';


//created a route with an initial route (splash screen)

void main() => runApp(MaterialApp(
  initialRoute: Splash.id,
  routes: {
    Splash.id: (context) => Splash(),
    WelcomePage.id : (context) => WelcomePage(),
    SignUp.id : (context) => SignUp(),
    //'/choose_location': (context) => ChooseLocation(),
  },
));
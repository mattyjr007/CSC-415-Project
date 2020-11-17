import 'package:flutter/material.dart';
import 'package:lawyerpp/ui/splash.dart';
import 'package:lawyerpp/ui/welcome_page.dart';


//created a route with an initial route (splash screen)

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Splash(),
    WelcomePage.id : (context) => WelcomePage(),
    //'/choose_location': (context) => ChooseLocation(),
  },
));
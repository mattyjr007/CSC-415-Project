import 'package:flutter/material.dart';
import 'package:lawyerpp/ui/register/client/panicAlert.dart';
import 'package:lawyerpp/ui/register/client/terms_and_condition.dart';
import 'package:lawyerpp/ui/register/forgotPassword/forgot_password.dart';
import 'package:lawyerpp/ui/register/forgotPassword/reset_password.dart';
import 'package:lawyerpp/ui/splash.dart';
import 'package:lawyerpp/ui/register/signup.dart';
import 'package:lawyerpp/ui/welcome_page.dart';
import 'package:lawyerpp/ui/register/select_path.dart';
import 'package:lawyerpp/ui/register/login.dart';



//created a route with an initial route (splash screen)

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: TermsAndC.id,

  routes: {
    Splash.id: (context) => Splash(),
    WelcomePage.id : (context) => WelcomePage(),
    SignUp.id : (context) => SignUp(),
    Path.id:(context) => Path(),
    Login.id:(context) => Login(),
    ForgotPassword.id:(context) => ForgotPassword(),
    ResetPassword.id:(context) => ResetPassword(),
    PanicAlert.id:(context)=>PanicAlert(),
    TermsAndC.id:(context)=>TermsAndC(),
    //'/choose_location': (context) => ChooseLocation(),
  },
));
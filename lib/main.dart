import 'package:flutter/material.dart';
import 'package:lawyerpp/ui/register/client/panicAlert.dart';
import 'package:lawyerpp/ui/register/client/terms_and_condition.dart';
import 'package:lawyerpp/ui/register/forgotPassword/forgot_password.dart';
import 'package:lawyerpp/ui/register/forgotPassword/reset_password.dart';
import 'package:lawyerpp/ui/register/laywer/jurisdiction.dart';
import 'package:lawyerpp/ui/register/laywer/practice_areas.dart';
import 'package:lawyerpp/ui/splash.dart';
import 'package:lawyerpp/ui/register/signup.dart';
import 'package:lawyerpp/ui/welcome_page.dart';
import 'package:lawyerpp/ui/register/select_path.dart';
import 'package:lawyerpp/ui/register/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lawyer PP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0XFF1A2C56),
        accentColor: Colors.white,
      ),
      initialRoute: Splash.id,
      routes: {
        Splash.id: (context) => Splash(),
        WelcomePage.id : (context) => WelcomePage(),
        SignUp.id : (context) => SignUp(),
        Path.id:(context) => Path(),
        Login.id:(context) => Login(),
        ForgotPassword.id:(context) => ForgotPassword(),
        ResetPassword.id:(context) => ResetPassword(),
        PanicAlert.id:(context) => PanicAlert(),
        TermsAndC.id:(context) => TermsAndC(),
        PracticeAreas.id:(context) => PracticeAreas(),
        Jurisdiction.id:(context) => Jurisdiction(),
        //'/choose_location': (context) => ChooseLocation(),
      },
    );
  }
}
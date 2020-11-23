import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/ui/register/signup.dart';

class Login extends StatefulWidget {

  static const String id = 'login_screen';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  /// A [GlobalKey] to hold the form state of my form widget for form validation
  final _formKey = GlobalKey<FormState>();

  /// An variable to hold an instance of [LoginScreenPresenter]
  //LoginScreenPresenter _presenter;

  /// Instantiating the [LoginScreenPresenter] class to handle the login requests
//  _SignInState() {
//    _presenter = new LoginScreenPresenter(this);
//  }

  /// Creating [FocusNode] for login details
  final FocusNode _myFocusNodeEmailLogin = FocusNode();
  final FocusNode _myFocusNodePasswordLogin = FocusNode();
  final FocusNode _myFocusNodePassword = FocusNode();
  final FocusNode _myFocusNodeEmail = FocusNode();
  final FocusNode _myFocusNodeName = FocusNode();

  /// A [TextEditingController] to control the input text for the user's email
  TextEditingController _loginEmailController = TextEditingController();

  /// A [TextEditingController] to control the input text for the user's password
  TextEditingController _loginPasswordController = TextEditingController();

  /// A string variable to hold the user's email
  String _email;

  /// A string variable to hold the user's password
  String _password;

  /// A boolean variable to hold whether the password should be shown or hidden
  bool _obscureTextLogin = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
        body: Container(
          padding: EdgeInsets.only(top: 66, left: 15, right: 15),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/lawyerpp_logo.png',
                    width: 33.28,
                    height: 35,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 32,),
                  Text(
                      legal,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF1D1D1D),
                          fontFamily: 'Raleway'
                      )
                  ),
                  SizedBox(height: 42,),
                  Container(
                    width: SizeConfig.screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: SizeConfig.screenWidth / 2.4,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/icons/google-icon.png',
                                    width: 14.23,
                                    height: 14.56,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 6.78),
                                  Text(
                                    'Google',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13.25,
                                      fontFamily: 'Raleway',
                                      color: Color(0xFF999999),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: SizeConfig.screenWidth / 2.4,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Color(0xFF006699),
                              borderRadius:
                              BorderRadius.all(Radius.circular(4)),
                            ),
                            child: Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/icons/linkedln.png',
                                    width: 14.23,
                                    height: 14.56,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 6.78),
                                  Text(
                                    'Linkedln',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13.25,
                                      fontFamily: 'Raleway',
                                      color: Colors.white,
                                      //fontFamily: ,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 18),
                  Container(
                    width: SizeConfig.screenWidth,
                    child: Row(
                      children: [
                        Container(
                          width: (SizeConfig.screenWidth / 2) - 22,
                          height: 1,
                          color: Colors.black.withOpacity(0.1),
                        ),
                        Container(
                          width: 14,
                          child: Text(
                            "Or",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF999999)
                            ),
                          ),
                        ),
                        Container(
                          width: (SizeConfig.screenWidth / 2) - 22,
                          height: 1,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildSignIn(),
                  SizedBox(height: 45,),
                  GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 45,
                      decoration: BoxDecoration(
                        //Active
                        color: Color(0xFF1A2C56),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child:Center(
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "Raleway",
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 23,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignUp.id);
                    },
                    child: Container(
                      width: SizeConfig.screenWidth - 40,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Raleway",
                            color:Color(0xFF999999),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Sign Up',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Raleway",
                                color: Color(0xFF1A2C56),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 82,),
                ],
              ),
            ),
          ),
        )
    );
  }


  /// A function that builds the sign up widget
  Widget _buildSignIn() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 6,),
          Text(
            'Email Address',
            style:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              fontFamily: 'Raleway',
            ),
          ),
          SizedBox(height: 6,),
          Container(
            width: SizeConfig.screenWidth,
            child: TextFormField(
              controller: _loginEmailController,
              keyboardType: TextInputType.text,
              validator: (value){
                if(value.isEmpty){
                  return 'Enter your first name';
                }
                return null;
              },
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Raleway',
                color: Color(0xFF1C2D55),
              ),
              decoration:kFieldDecoration.copyWith(
                  hintText: 'johnbull@lawyerpp.com',
                  hintStyle:TextStyle(
                    color:Color(0xFF8B9EB4),
                    fontSize: 14,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                  )
              ),
            ),
          ),
          SizedBox(height: 26,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Password',
                style:TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black,
                  fontFamily: 'Raleway',
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Text(
                  'Forgot password',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    fontSize: 13.25,
                    decoration: TextDecoration.underline,
                    color: Color(0xFF999999),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 6,),
          Container(
            width: SizeConfig.screenWidth,
            child: TextFormField(
              obscureText: _obscureTextLogin,
              controller: _loginPasswordController,
              keyboardType: TextInputType.text,
              validator: (value){
                if(value.isEmpty){
                  return 'Enter your password';
                }
                return null;
              },
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Raleway',
                color: Color(0xFF1C2D55),
              ),
              decoration:kFieldDecoration.copyWith(
                  suffixIcon: GestureDetector(
                    onTap: _toggleLogin,
                    child: Icon(
                      _obscureTextLogin ? FontAwesomeIcons.eyeSlash
                          : FontAwesomeIcons.eye,
                      size: 16.0,
                      color: Color(0xFF828282),
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// A function to toggle if to show the password or not by
  /// changing [_obscureTextLogin] value
  void _toggleLogin() {
    setState(() {
      _obscureTextLogin = !_obscureTextLogin;
    });
  }
}


import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/ui/register/signup.dart';


class Login extends StatefulWidget {
  static const String id = 'login';
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
  TextEditingController _loginEmailController = new TextEditingController();

  /// A [TextEditingController] to control the input text for the user's password
  TextEditingController _loginPasswordController = new TextEditingController();

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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Stack(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Column(
                      children: <Widget>[
                        //parent container with maximum width size the children is not meant to pass
                        Container(
                          width: SizeConfig.screenWidth - 30,
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/lawyerpp_logo.png',
                                width: 33.28,
                                height: 35,
                              ),

                              SizedBox(height: 32,),


                              Text(legal,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(

                                  )
                              ),

                              SizedBox(height: 42,),

                              // use a container to wrap the two button[google and linkedln] in a stack
                              Container(
                                width: SizeConfig.screenWidth,
                                child: Stack(
                                  children: <Widget>[
                                    //google button row
                                    Row(
                                      children: <Widget>[
                                        //button for google
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: SizeConfig.screenWidth / 2.4,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                            ),
                                            child: Center(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .center,
                                                children: <Widget>[
                                                  Image.asset(
                                                    'assets/icons/google-icon.png',
                                                    width: 14.23,
                                                    height: 14.56,
                                                  ),
                                                  SizedBox(width: 6.78,),
                                                  Text(
                                                    'Google',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontSize: 13.25,
                                                      //fontFamily: ,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    //linkedln button row
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        //button for linkedln
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: SizeConfig.screenWidth / 2.4,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF006699),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                            ),
                                            child: Center(
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .center,
                                                children: <Widget>[
                                                  Image.asset(
                                                    'assets/icons/linkedln.png',
                                                    width: 14.23,
                                                    height: 14.56,
                                                  ),
                                                  SizedBox(width: 6.78,),
                                                  Text(
                                                    'Linkedln',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w600,
                                                      fontSize: 13.25,
                                                      color: Colors.white,
                                                      //fontFamily: ,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              // this is for the divider line and text
                              Container(
                                child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: Divider(
                                            height: 45,
                                            thickness: 1,
                                          )
                                      ),

                                      Text(
                                        "Or",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          //fontFamily: ,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      Expanded(
                                          child: Divider(
                                            height: 45,
                                            thickness: 1,
                                          )
                                      ),
                                    ]
                                ),
                              ),

                              SizedBox(height: 22,),

                              //forms function
                              _buildSignUp(),

                              SizedBox(height: 45,),

                              //Sign in button
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
                                        //fontFamily: ,
                                      ),
                                    ),
                                  ),
                                ),
                              ),


                              SizedBox(height: 23,),
                              // alternative sign in link
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
                                        //fontFamily: "Regular",
                                        color:Color(0xFF999999),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Sign Up',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            //fontFamily: "Regular",
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
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }


  /// A function that builds the sign up widget
  Widget _buildSignUp() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 6,),
          //Email
          Text(
            'Email Address',
            style:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
              //fontFamily: ,
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
                fontSize: 12,
                fontWeight: FontWeight.w400,
                //fontFamily: ,
                color: Color(0xFF1C2D55),
              ),
              decoration:kFieldDecoration.copyWith(
                  hintText: 'johnbull@lawyerpp.com',
                  hintStyle:TextStyle(
                    color:Color(0xFF8B9EB4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )
              ),
            ),
          ),

          SizedBox(height: 26,),

          //password

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Password',
                    style:TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black,
                      //fontFamily: ,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
               // crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){},
                    child: Text(
                      'Forgot password',
                      style: TextStyle(
                       // fontFamily: ,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.25,
                        color: Color(0xFF999999),
                      ),
                    ),
                  )
                ],
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
                fontSize: 12,
                fontWeight: FontWeight.w400,
                //fontFamily: ,
                color: Color(0xFF1C2D55),
              ),
              decoration:kFieldDecoration.copyWith(
                //hintText: 'Password',
                  hintStyle:TextStyle(
                    color:Color(0xFF8B9EB4),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
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

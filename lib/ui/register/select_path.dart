
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

class Path extends StatefulWidget {
  static const String id = 'path';
  @override
  _PathState createState() => _PathState();
}

class _PathState extends State<Path> {
  List<String> _pathNames = [
    "Lawyer",
    "Client",
    "Law Student",
  ];
    //int _selectedPath = 0 ;
     String _selectedPath;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: Column(
            children: <Widget>[
              Container(
                width: SizeConfig.screenWidth - 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topRight,
//                      width: 15,
//                      height: 15,
                      child: GestureDetector(
                        onTap: (){},
                        child: Icon(
                          FontAwesomeIcons.times,
                         // size: 16,
                          color: Color(0xFF999999),
                        ),
                      ),
                    ),

                    SizedBox(height: 54,),

                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Which of these best describes you?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          //fontFamily: ,
                          fontSize:17.75 ,
                          fontWeight:FontWeight.w500 ,
                          color: Color(0xFF1D1D1D,),
                        ),
                      ),
                    ),

                    SizedBox(height: 171,),

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'I am a...',
                                style: TextStyle(
                                  fontSize: 14.75,
                                  fontWeight: FontWeight.w600,
                                  //fontFamily: ,
                                  color: Color(0xFF1D1D1D),
                                ),

                              ),
                            ],
                          ),
                          SizedBox(height: 6,),

                          Container(
                            height: 45,
                            //width: SizeConfig.screenWidth,
                            child: DropdownButtonFormField(
                              //itemHeight: ,
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                //fontFamily: ,
                              ),
                              value: _selectedPath,
                              onChanged: (value){
                                setState(() {
                                  _selectedPath = value;
                                });
                              },
                              validator: (value){
                                if (_selectedPath == null || _selectedPath.isEmpty){
                                  return 'Pick your option';
                                }
                                return null;
                              },
                              decoration: kFieldDecoration.copyWith(
                                hintText: 'Pick an option',
                                hintStyle: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              selectedItemBuilder: (BuildContext context){
                                return _pathNames.map((value){
                                  return Text(
                                    value,
                                    style: TextStyle(color: Color(0xFF1C2D55)),
                                  );
                                }).toList();
                              },
                              items: _pathNames.map(( value){
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value,
                                    style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          )

                        ],
                      ),
                    )


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

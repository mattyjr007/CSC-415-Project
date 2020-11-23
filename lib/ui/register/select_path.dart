import 'package:flutter/material.dart';
import 'package:lawyerpp/ui/register/client/panicAlert.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:lawyerpp/utils/widgets.dart';

class Path extends StatefulWidget {

  static const String id = 'path_screen';

  @override
  _PathState createState() => _PathState();
}

class _PathState extends State<Path> {

  /// A list of string holding the paths for the drop down
  List<String> _pathNames = [
    "Lawyer",
    "Client",
    "Law Student",
  ];

  /// A string variable holding the selected path
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
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: Color(0xFF999999),
                        ),
                      ),
                    ),
                    SizedBox(height: 54,),
                    Container(
                      alignment: Alignment.center,
                      width: SizeConfig.screenWidth,
                      child: Text(
                        'Which of these best describes you?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize:17.75 ,
                          fontWeight:FontWeight.w500 ,
                          color: Color(0xFF1D1D1D),
                        ),
                      ),
                    ),
                    SizedBox(height: 171),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'I am a...',
                            style: TextStyle(
                              fontSize: 14.75,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Raleway',
                              color: Color(0xFF1D1D1D),
                            ),

                          ),
                          SizedBox(height: 6,),
                          Container(
                            height: 45,
                            width: SizeConfig.screenWidth,
                            child: DropdownButtonFormField(
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Raleway',
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
                                  color: Color(0xFF666666),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Raleway',
                                ),
                              ),
                              selectedItemBuilder: (BuildContext context){
                                return _pathNames.map((value){
                                  return Text(
                                    value,
                                    style: TextStyle(
                                      color: Color(0xFF1C2D55),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Raleway',
                                    ),
                                  );
                                }).toList();
                              },
                              items: _pathNames.map(( value){
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value,
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Raleway',
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
      floatingActionButton: _selectedPath != null
          ? RoundIconButton(
        onPressed: (){
          if(_selectedPath == 'Lawyer'){
            //Navigator.pushNamed(context, routeName)
          }
          else {
            Navigator.pushNamed(context, PanicAlert.id);
          }
        }
      )
          : Container(),
    );
  }
}

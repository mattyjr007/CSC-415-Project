import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:lawyerpp/utils/widgets.dart';

import 'jurisdiction.dart';

class PracticeAreas extends StatefulWidget {

  static const String id = 'practice_areas_screen';

  @override
  _PracticeAreasState createState() => _PracticeAreasState();
}

class _PracticeAreasState extends State<PracticeAreas> {

  /// A list of all available practices in string
  List<String> _practices = [
    'Agriculture',
    'Antitrust',
    'Banking & Finance',
    'Capital Markets',
    'Company Secretarial Services',
    'Corporate/Commercial',
    'Entertainment & Media',
    'Environment',
    'Forensics'
  ];

  /// A list of boolean variables of all available practices
  List<bool> _selectedPractices = List();

  /// Set all the practices to false
  void setPractice(){
    for(int i = 0; i < _practices.length; i ++){
      _selectedPractices.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    setPractice();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
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
              SizedBox(height: 45),
              Text(
                'Select your Practice Areas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Color(0xFF1D1D1D),
                  fontSize: 17.75,
                  fontWeight:FontWeight.w500,
                ),
              ),
              SizedBox(height: 14),
              Container(
                width: SizeConfig.screenWidth - 60,
                child: Text(
                  'You are almost done! Select at least 1 practice area.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Color(0xFF1D1D1D),
                    fontSize: 14,
                    fontWeight:FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 26),
              Container(
                height: 30,
                width: SizeConfig.screenWidth,
                padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                decoration: BoxDecoration(
                  color: Color(0xFFD3E0EA).withOpacity(0.4),
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/search.png',
                      width: 15,
                      height: 15,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 14),
                    Text(
                      'Search practice areas',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Color(0xFF1D1D1D),
                        fontSize: 12,
                        fontWeight:FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 45),
              Expanded(
                child: _buildPracticeWidget(),
              ),
            ],
          ),
        ),
        floatingActionButton: RoundIconButton(
          onPressed: (){
            Navigator.pushNamed(context, Jurisdiction.id);
          }
        ),
      ),
    );
  }

  /// A function to build the list of all practices
  Widget _buildPracticeWidget(){
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: _practices?.length ?? 0,
      itemBuilder: (BuildContext context, int i) {
         return Column(
           children: [
             GestureDetector(
               onTap: (){
                 setState(() {
                   _selectedPractices[i] = !_selectedPractices[i];
                 });
               },
               child: PracticeContainer(
                 title: _practices[i],
                 onPressed: _selectedPractices[i],
               ),
             ),
             SizedBox(height: 18),
           ],
         );
      }
    );
  }

}

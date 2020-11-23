import 'package:flutter/material.dart';
import 'package:lawyerpp/utils/constant.dart';
import 'package:lawyerpp/utils/sizeConfig.dart';
import 'package:lawyerpp/utils/widgets.dart';

class Jurisdiction extends StatefulWidget {

  static const String id = 'jurisdiction_screen';

  @override
  _JurisdictionState createState() => _JurisdictionState();
}

class _JurisdictionState extends State<Jurisdiction> {

  /// A [TextEditingController] to control the input text for the user's jurisdiction
  TextEditingController _jurisdictionController = TextEditingController();

  /// A [TextEditingController] to control the input text for the user's enrollment no
  TextEditingController _enrollmentController = TextEditingController();

  String _jurisdictionText = 'E.g Nigeria or England & Wales or New York, etc.';

  bool _enrollment = false;

  bool _certificate = false;

  bool _selectedType = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        'Qualification to Practice',
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
                          'You are almost done! Please indicate jurisdictions where you are qualified to practice, and insert your enrollment number or upload your qualifying certificate for each jurisdiction.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Color(0xFF1D1D1D),
                            fontSize: 14,
                            fontWeight:FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      SizedBox(height: 6),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Jurisdiction',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Color(0xFF1D1D1D),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: SizeConfig.screenWidth,
                        child: TextFormField(
                          controller: _jurisdictionController,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter your jurisdiction';
                            }
                            return null;
                          },
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Raleway',
                            color: Color(0xFF999999),
                          ),
                          decoration: kFieldDecoration.copyWith(
                            hintText: _jurisdictionText,
                            hintStyle: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Raleway',
                            ),
                            fillColor: Colors.transparent,
                            contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 15.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(2.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF000000).withOpacity(0.2), width: 1.0, style: BorderStyle.solid),
                              borderRadius: BorderRadius.all(Radius.circular(2.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF000000).withOpacity(0.2), width: 1.5, style: BorderStyle.solid),
                              borderRadius: BorderRadius.all(Radius.circular(2.0)),
                            ),
                          ),
                        ),
                      ),
                      !_selectedType ? Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Kindly indicate one jurisdiction at a time',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Color(0xFF1A2C56),
                              fontSize: 11,
                              fontStyle: FontStyle.italic
                          ),
                        ),
                      ) : Container(),
                      SizedBox(height: 33),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _enrollment = !_enrollment;
                                if(_selectedType){
                                  _certificate = !_certificate;
                                }
                                _selectedType = true;
                              });
                            },
                            child: Container(
                              width: (SizeConfig.screenWidth / 2) - 34,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: _enrollment ? Color(0xFFD3E0EA) : Color(0xFFF8F8F8),
                                  borderRadius: BorderRadius.all(Radius.circular(4))
                              ),
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Enrollment No',
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 14,
                                      color: Color(0xFF999999),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(
                                    _enrollment ? Icons.check : Icons.add,
                                    color: Color(0xFF999999),
                                    size: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Container(
                            width: 16,
                            child: Text(
                              'Or',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 14,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          SizedBox(width: 9),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                _certificate = !_certificate;
                                if(_selectedType){
                                  _enrollment = !_enrollment;
                                }
                                _selectedType = true;
                              });
                            },
                            child: Container(
                              width: (SizeConfig.screenWidth / 2) - 34,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: (_certificate && _selectedType) ? Color(0xFFD3E0EA) : Color(0xFFF8F8F8),
                                  borderRadius: BorderRadius.all(Radius.circular(4))
                              ),
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Upload Cert',
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 14,
                                      color: Color(0xFF999999),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(
                                    (_certificate && _selectedType) ? Icons.check : Icons.add,
                                    color: Color(0xFF999999),
                                    size: 12,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 23),
                      _enrollment
                          ? Align(
                          alignment: Alignment.centerLeft,
                          child: _buildEnrollment()
                      )
                          : Container(),
                      _certificate
                          ? _buildCertificate()
                          : Container(),
                      SizedBox(height: 46),
                      GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          width: SizeConfig.screenWidth,
                          height: 45,
                          decoration: BoxDecoration(
                            //inActive
                            color: Color(0xFFD3E0EA),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: 'Raleway',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEnrollment(){
    return Container(
      width: (SizeConfig.screenWidth / 2) - 34,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Enrollment No',
              style: TextStyle(
                fontFamily: 'Raleway',
                color: Color(0xFF1D1D1D),
                fontSize: 14,
              ),
            ),
          ),
          Container(
            height: 45,
            width: SizeConfig.screenWidth,
            child: TextFormField(
              controller: _enrollmentController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Add your enrollment no';
                }
                return null;
              },
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: 'Raleway',
                color: Color(0xFF999999),
              ),
              decoration: kFieldDecoration.copyWith(
                hintText: 'Add Enrollment number',
                hintStyle: TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Raleway',
                ),
                fillColor: Colors.transparent,
                contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF000000).withOpacity(0.2), width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF000000).withOpacity(0.2), width: 1.5, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCertificate(){
    return Container(
      width: SizeConfig.screenWidth,
      height: 113,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: Color(0xFF999999), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/certificate.png',
            width: 32,
            height: 32,
            fit: BoxFit.contain,
          ),
          Text(
            'Upload Certificate',
            style: TextStyle(
              fontFamily: 'Raleway',
              color: Color(0xFF1C2D55),
              fontSize: 12,
              fontWeight: FontWeight.w600
            ),
          ),
          Text(
            'Supports Jpg,Pdf, Word,Png',
            style: TextStyle(
                fontFamily: 'Raleway',
                color: Color(0xFF999999),
                fontSize: 10,
                fontWeight: FontWeight.w300
            ),
          ),
        ],
      ),
    );
  }

}

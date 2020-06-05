import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/colors.dart';
import 'package:flutterui/dialog/success_dialog.dart';
import 'package:flutterui/widgets/registration_widget.dart';

class RegistrationStep3Screen extends StatefulWidget {
  Registration3State createState() => Registration3State();
}

class Registration3State extends State<RegistrationStep3Screen> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Container(
            height: 279,
            child: Stack(
              children: <Widget>[
                Image.asset('images/rect.png'),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context, true);
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Image.asset(
                              'images/back_icon.png',
                              width: 19.3,
                              height: 9.3,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Image.asset('images/reg_top.png',
                          height: 68.7, width: 68.7),
                      SizedBox(height: 15),
                      Text(
                        'Registration',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'IbmplexsansSemiBold'),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'GilroyMedium'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0.0, -70.0, 0.0),
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Card(
              elevation: 5,
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Divider(height: 1, color: MyColor.lineColor),
                              Divider(height: 1, color: MyColor.lineColor),
                            ],
                          ),
                          Container(
                            transform:
                                Matrix4.translationValues(0.0, -10.0, 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Image.asset(
                                  'images/color_circle.png',
                                  height: 21,
                                  width: 21,
                                ),
                                Image.asset(
                                  'images/color_circle.png',
                                  height: 21,
                                  width: 21,
                                ),
                                Image.asset(
                                  'images/color_circle.png',
                                  height: 21,
                                  width: 21,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '(Tell us your contact details)',
                      style: TextStyle(
                          fontSize: 14,
                          color: MyColor.hintColor,
                          fontFamily: 'GilroyMedium'),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'ID type',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: MyColor.labelColor,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'GilroyMedium',
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                width: double.infinity,
                                height: 40,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.3),
                                  border: Border.all(
                                      color: Colors.black54, width: 0.2),
                                  color: Colors.white,
                                ),

                                // dropdown below..
                                child: DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: Icon(Icons.arrow_drop_down),
                                    iconSize: 30,
                                    underline: SizedBox(),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue = newValue;
                                      });
                                    },
                                    items: <String>[
                                      'One',
                                      'Two',
                                      'Three',
                                      'Four'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList()),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: RegistrationWidget('ID number', 'NA', false),
                          flex: 1,
                        )
                      ],
                    ),
                    SizedBox(height: 12),
                    Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Mobile No:',
                            style: TextStyle(
                              fontSize: 15,
                              color: MyColor.labelColor,
                              decoration: TextDecoration.none,
                              fontFamily: 'GilroyMedium',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 80,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.3),
                                border: Border.all(
                                    color: Colors.black54, width: 0.2),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 3,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image.asset(
                                      'images/flag.png',
                                      height: 25,
                                      width: 25,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Text(
                                      '+91',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontFamily: 'GilroyMedium'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: Stack(
                                  children: <Widget>[
                                    TextFormField(
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.7),
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroyMedium',
                                          fontWeight: FontWeight.w500),
                                      decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.only(
                                              left: 10.0, bottom: 8),
                                          border: InputBorder.none,
                                          hintText: 'Enter phone'),
                                      maxLines: 1,
                                    ),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Container(
                                              height: 16,
                                              width: 16,
                                              child: Stack(
                                                children: <Widget>[
                                                  Image.asset(
                                                    'images/rounded_tick.png',
                                                  ),
                                                  Center(
                                                    child: Image.asset(
                                                      'images/tick.png',
                                                      height: 5.7,
                                                      width: 7,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )))
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.3),
                                  border: Border.all(
                                      color: Colors.black54, width: 0.2),
                                  color: Colors.white,
                                ),
                                height: 40,
                              ),
                            )
                          ],
                        ),
                        RegistrationWidget('Email', 'abc@gmailcom', false),
                        SizedBox(height: 30),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => SuccessDialog(),
              );
            },
            child: Container(
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              height: 37,
              width: double.infinity,
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Stack(
                children: <Widget>[
                  Image.asset('images/button.png'),
                  Center(
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontFamily: 'IbmplexsansSemiBold'),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

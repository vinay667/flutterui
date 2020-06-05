import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/colors.dart';
import 'package:flutterui/screens/registration_step3.dart';
import 'package:flutterui/widgets/registration_widget.dart';

class RegistrationStep2Screen extends StatefulWidget {
  Registration2State createState() => Registration2State();
}

class Registration2State extends State<RegistrationStep2Screen> {
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
                              Divider(height: 1, color: Colors.grey),
                              Divider(height: 1, color: Colors.grey),
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
                                  'images/empty_circle.png',
                                  height: 14.3,
                                  width: 14.3,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '(Tell us your Address details)',
                      style: TextStyle(
                          fontSize: 14,
                          color: MyColor.hintColor,
                          fontFamily: 'GilroyMedium'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Street Address',
                            style: TextStyle(
                              fontSize: 15,
                              color: MyColor.labelColor,
                              decoration: TextDecoration.none,
                              fontFamily: 'GilroyMedium',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Container(
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'GilroyMedium',
                                  fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                      left: 10.0, bottom: 12),
                                  border: InputBorder.none,
                                  hintText: 'Full Address...'),
                              maxLines: 1,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.3),
                              border:
                                  Border.all(color: Colors.black54, width: 0.2),
                              color: Colors.white,
                            ),
                            height: 70,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RegistrationWidget('City', 'Lucknow', false),
                          flex: 1,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: RegistrationWidget(
                              'Province/State', 'Uttar Pradesh', false),
                          flex: 1,
                        )
                      ],
                    ),
                    SizedBox(height: 12),
                    RegistrationWidget('Region', 'India', false),
                    SizedBox(height: 35),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => RegistrationStep3Screen()));
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
                      'CONTINUE',
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

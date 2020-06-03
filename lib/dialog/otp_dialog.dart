import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../colors.dart';

class OtpDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OtpDialogState();
}

class OtpDialogState extends State<OtpDialog>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
            scale: scaleAnimation,
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.7)),
                  child: Container(
                    height: 275,
                    child: Stack(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(0.0),
                            height: 275.0,
                            // height:double.infinity,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 25),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  child: Text(
                                    'Code Verification',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: MyColor.dialogHeaderColor,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'GilroyBold'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: Text(
                                    'Enter 6 digit code sent to your mobile number +6391234575',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: MyColor.plainTextColor,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'GilroySemibold'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  height: 56,
                                  child: OTPTextField(
                                    length: 6,
                                    width: MediaQuery.of(context).size.width,
                                    fieldWidth: 35,
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.black),
                                    textFieldAlignment:
                                        MainAxisAlignment.spaceAround,
                                    fieldStyle: FieldStyle.box,
                                    onCompleted: (pin) {
                                      print("Completed: " + pin);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  child: Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.3)),
                                    child: Container(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(top: 0, left: 0),
                                        child: Center(
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'GilroySemibold'),
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.3),
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            MyColor.gradientStart,
                                            MyColor.gradientEnd
                                          ],
                                        ),
                                        color: Colors.white,
                                      ),
                                      height: 42,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 40, right: 0, top: 10),
                                      child: Text(
                                        'Don’t receive code?',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: MyColor.plainTextColor,
                                            decoration: TextDecoration.none,
                                            fontFamily: 'GilroySemibold'),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 2, right: 0, top: 10),
                                      child: Text(
                                        'RESEND CODE',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: MyColor.redColor,
                                            decoration: TextDecoration.none,
                                            fontFamily: 'GilroySemibold'),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                transform:
                                    Matrix4.translationValues(7.0, -10.0, 0.0),
                                width: 32,
                                height: 31.7,
                                child: Center(
                                    child: Image.asset(
                                  'images/close_dialog_icon.png',
                                  width: 32,
                                  height: 31.7,
                                ))),
                          ),
                        )
                      ],
                    ),
                  )),
            )),
      ),
    );
  }
}

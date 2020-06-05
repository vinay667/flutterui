import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../colors.dart';

class SuccessDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SuccessDialogState();
}

class SuccessDialogState extends State<SuccessDialog>
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
                    height: 257,
                    child: Stack(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(0.0),
                            height: 257.0,
                            // height:double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                SizedBox(height: 30),
                                Image.asset(
                                  'images/check.png',
                                  width: 54,
                                  height: 54,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Text(
                                    'Successfully Done!',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: MyColor.softBlack,
                                        fontFamily: 'IbmplexsansSemiBold'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                    maxLines: 3,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: MyColor.lightGrey,
                                        fontFamily: 'GilroyMedium'),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Image.asset(
                                          'images/ok_button.png',
                                          width: 128,
                                          height: 37,
                                        ),
                                        Container(
                                            width: 128,
                                            height: 37,
                                            child: Center(
                                              child: Text(
                                                'OK',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'IbmplexsansSemiBold'),
                                                textAlign: TextAlign.center,
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
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
                                  'images/close_blue.png',
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

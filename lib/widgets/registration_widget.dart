import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class RegistrationWidget extends StatelessWidget {
  RegistrationWidget(this.labelText, this.textFieldText, this.isObscure);

  final String labelText, textFieldText;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 10),
          child: Text(
            labelText,
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
              obscureText: isObscure,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 12,
                  decoration: TextDecoration.none,
                  fontFamily: 'GilroyMedium',
                  fontWeight: FontWeight.w500),
              initialValue: textFieldText,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 10.0, bottom: 8),
                border: InputBorder.none,
              ),
              maxLines: 1,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.3),
              border: Border.all(color: Colors.black54, width: 0.2),
              color: Colors.white,
            ),
            height: 40,
          ),
        ),
      ],
    );
  }
}

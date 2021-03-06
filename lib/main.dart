
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/dialog/otp_dialog.dart';
import 'package:flutterui/screens/registration_step1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Custom Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                /*showDialog(
                  context: context,
                  builder: (_) => OtpDialog(),
                );*/

                Navigator.push(context, CupertinoPageRoute(builder: (context)=>RegistrationStep1Screen()));


              },
              child: Text('Start Registration',style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

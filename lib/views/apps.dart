import 'package:flutter/material.dart';

class AppsPageWidget extends StatefulWidget {
  @override
  AppsPageWidgetState createState() => new AppsPageWidgetState();
}

class AppsPageWidgetState extends State<AppsPageWidget> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text("应用中心"),
      ),
    );
  }
}
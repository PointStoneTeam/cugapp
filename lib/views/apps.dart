import 'package:flutter/material.dart';
import 'package:cugapp/utils/global_config.dart';

class AppsPageWidget extends StatefulWidget {
  @override
  AppsPageWidgetState createState() => new AppsPageWidgetState();
}

class AppsPageWidgetState extends State<AppsPageWidget> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: Text("应用中心"),
      ),
      body: new Center(
        child: new Text("应用中心"),
      ),
    );
  }
}
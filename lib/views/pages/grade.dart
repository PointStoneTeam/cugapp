import 'package:flutter/material.dart';

class GradePageWidget extends StatefulWidget {
  @override
  GradePageWidgetState createState() => new GradePageWidgetState();
}

class GradePageWidgetState extends State<GradePageWidget> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '我的成绩',
      home: Scaffold(
        appBar: AppBar(
          title: Text('我的成绩'),
          backgroundColor: Colors.blue[400],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("选择学期!"),
              ),
              Divider(
                color: Colors.black87,
                height: 0,
              ),
            ],
          )
        ),
      ),
    );
  }
}
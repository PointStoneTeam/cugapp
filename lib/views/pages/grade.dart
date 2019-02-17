import 'package:flutter/material.dart';
import 'package:cugapp/utils/global_config.dart';

class GradePageWidget extends StatefulWidget {
  @override
  GradePageWidgetState createState() => new GradePageWidgetState();
}

class GradePageWidgetState extends State<GradePageWidget> {

  var dropdownValue = "2018年春季学期";

  void freshGrade() {

  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '我的成绩',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios), 
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('我的成绩'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: const Text('选择学期'),
                trailing: DropdownButton<String>(
                  value: dropdownValue,
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>[
                      '2019年春季学期', '2018年秋季学期', '2018年春季学期'
                    ]
                    .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    })
                    .toList(),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
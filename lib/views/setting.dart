import 'package:flutter/material.dart';

class SettingPageWidget extends StatefulWidget {
  @override
  SettingPageWidgetState createState() => new SettingPageWidgetState();
}

class SettingPageWidgetState extends State<SettingPageWidget> {

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: Colors.grey[200]),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // top bar
          Container(
            constraints: new BoxConstraints.expand(
              height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 100.0,
            ),
            padding: const EdgeInsets.all(8.0),
            color: Colors.blueGrey.shade400,
            alignment: Alignment.center,
          ),
          ListTile(title: Text('上课提醒'), trailing: Switch(onChanged: (a) {}, value: false,),),
          Divider(color: Colors.black54,),
        ]
      ),
    );
  }
}
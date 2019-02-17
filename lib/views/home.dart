import 'package:flutter/material.dart';
import 'package:cugapp/utils/global_config.dart';
import 'pages/grade.dart';

class HomePageWidget extends StatefulWidget {
  @override
  HomePageWidgetState createState() => new HomePageWidgetState();
}

class HomePageWidgetState extends State<HomePageWidget> {

  void openFullCoursePage() {
    print("Open Full Courses");
  }

  void openGradePage() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new GradePageWidget()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: SingleChildScrollView(
        child: Container(
          decoration: new BoxDecoration(color: GlobalConfig.backgroundColor),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // top bar
              Container(
                constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 120.0,
                ),
                padding: const EdgeInsets.all(8.0),
                color: Colors.blue[400],
                alignment: Alignment.center,
                transform: Matrix4.skew(0, -0.14) + Matrix4.rotationX(0.7),
              ),
              // Card for courses
              Card(
                elevation: 1.0,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0.0))),  //设置圆角
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: ListTile(
                        leading: Icon(Icons.school, color: GlobalConfig.topicBlue),
                        title: Text('今日课表', style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: const Text('> 点击查看完整课程表', style: TextStyle(color: Colors.blue),),
                        onTap: this.openFullCoursePage,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.white, Colors.blue[100]], begin: FractionalOffset(0.2, 0), end: FractionalOffset(0, 1))
                      ),
                    ),
                    Divider(
                      color: GlobalConfig.dividerBlack,
                      height: 0,
                    ),
                    ListTile(
                      leading: Text("1 - 2"),
                      title: Text('勃学入门', style: TextStyle(fontWeight: FontWeight.normal),),
                      trailing: Text("北综楼 404"),
                      isThreeLine: false,
                    ),
                    Divider(
                      color: GlobalConfig.dividerGrey,
                      height: 0,
                      indent: 40,
                    ),
                    ListTile(
                      leading: Text("5 - 6"),
                      title: Text('白色相簿2:从入门到精通', style: TextStyle(fontWeight: FontWeight.normal),),
                      trailing: Text("教三楼 233"),
                    )
                  ],
                ),
              ),
              // Card for grade
              Card(
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0.0))),  //设置圆角
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: ListTile(
                        leading: Icon(Icons.grade, color: GlobalConfig.topicBlue),
                        title: Text('我的成绩', style: TextStyle(fontWeight: FontWeight.bold)),
                        trailing: Text('> 点击查看', style: TextStyle(color: Colors.blue)),
                        onTap: openGradePage,
                      ),
                      // decoration: BoxDecoration(
                      //   gradient: LinearGradient(colors: [Colors.white, Colors.blue[100]], begin: FractionalOffset(0.2, 0), end: FractionalOffset(0, 1))
                      // ),
                    )
                  ],
                ),
              ),
              Card(
                elevation: 1.0,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0.0))),  //设置圆角
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: ListTile(
                        leading: Icon(Icons.message, color: GlobalConfig.topicBlue),
                        title: Text('通知', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Divider(
                      color: GlobalConfig.dividerBlack,
                      height: 0,
                    ),
                    ListTile(
                      title: Text('早操从本学期起将被彻底取消', style: TextStyle(fontWeight: FontWeight.normal),),
                    ),
                    Divider(
                      color: GlobalConfig.dividerGrey,
                      height: 0,
                      indent: 40,
                    ),
                    ListTile(
                      title: Text('中国地质大学（武汉）将与南望山小学合并，改名为南望山小学附属大学', style: TextStyle(fontWeight: FontWeight.normal),),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );

  }
}
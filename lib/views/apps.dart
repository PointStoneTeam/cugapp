import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cugapp/utils/global_config.dart';


class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  TestFlowDelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = 0.0;
    var y = 0.0;
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + 0.0;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x = w;
      } else {
        x = 0.0;
        y += context.getChildSize(i).height;
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x += context.getChildSize(i).width + 0.0 + 0.0;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}

class AppsPageWidget extends StatefulWidget {
  @override
  AppsPageWidgetState createState() => new AppsPageWidgetState();
}

class AppsPageWidgetState extends State<AppsPageWidget> {

  var width, height;

  double iconSize = 38;

  var apps;

  Container genIconBox(icon, text) {
    return 
    Container( 
      child: Column(
        children: <Widget>[
          Container(height: this.height / 4),
          GestureDetector(child: SizedBox(child: icon), onTap: () { print("tap!");}),
          Text(text)
        ],
      ),
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: Colors.grey, width: 0.28)) 
        + Border(bottom: BorderSide(color: Colors.grey, width: 0.28))
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // set size
    this.height = (MediaQuery.of(context).size.height - 1) / 4.5;
    this.width = (MediaQuery.of(context).size.width - 1) / 3.0;

    return new Scaffold(
      appBar: AppBar(
          title: Text("应用中心"),
      ),
      body: new Center(
        child: Flow(
          delegate: TestFlowDelegate(margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)),
          children: <Widget>[
            genIconBox(SvgPicture.asset("img/library.svg", color: Colors.black, width: iconSize, height: iconSize,), '图书馆'),
            genIconBox(SvgPicture.asset("img/card.svg", color: Colors.black, width: iconSize, height: iconSize,), '校园卡'),
            genIconBox(SvgPicture.asset("img/finance.svg", color: Colors.black, width: iconSize, height: iconSize,), '财务查询'),
            genIconBox(SvgPicture.asset("img/grade.svg", color: Colors.black, width: iconSize, height: iconSize,), '成绩管理'),
            genIconBox(SvgPicture.asset("img/exam.svg", color: Colors.black, width: iconSize, height: iconSize,), '考试安排'),
            genIconBox(SvgPicture.asset("img/classroom.svg", color: Colors.black, width: iconSize, height: iconSize,), '空教室查询'),
        ],
        ),
      ),
    );
  }
}
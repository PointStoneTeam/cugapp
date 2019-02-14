import 'package:flutter/material.dart';
import 'views/apps.dart';
import 'views/home.dart';
import 'views/setting.dart';

class DefaultHomePageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DefaultHomePageWidgetState();
  }
}

class DefaultHomePageWidgetState extends State<DefaultHomePageWidget> {
  int _currentIndex = 0;

  List<Widget> pages = new List();

  @override
  void initState() {
    super.initState();
    pages
      ..add(HomePageWidget())
      ..add(AppsPageWidget())
      ..add(SettingPageWidget());
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: new Text('首页')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: new Text('应用')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: new Text('我的')
          ),
        ],
        // Default page index
        currentIndex: _currentIndex,
        // callback
        onTap: (int i) {
          // Update index, necessary for ui
          setState(() {
            _currentIndex = i;
          });
        },
        fixedColor: Colors.blue[500],
      ),
      // Set current body page
      body: pages[_currentIndex],
    );
  }
}

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '我的地质锤',
      home: new DefaultHomePageWidget(),
    );
  }
}
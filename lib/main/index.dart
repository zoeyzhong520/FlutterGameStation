// TabBar

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home.dart';
import 'strategy.dart';
import 'profile.dart';
import 'treasure.dart';

class IndexPage extends StatefulWidget {
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> botomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: '首页'),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.game_controller), label: '宝库'),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.wand_stars), label: '攻略'),
    // BottomNavigationBarItem(
    //     icon: Icon(CupertinoIcons.profile_circled), label: '我的'),
  ];

  final List tableBodies = [
    HomePage(),
    TreasurePage(),
    StrategyPage(),
    // ProfilePage()
  ];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPage = tableBodies[currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: botomTabs,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = tableBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}

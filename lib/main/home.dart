// 首页（最新）

import 'package:flutter/material.dart';
import './homeModule/homeSwiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          HomeSwiper(),
          Text('首页'),
        ],
      ),
    );
  }
}

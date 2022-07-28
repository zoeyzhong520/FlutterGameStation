// 首页（最新）

import 'package:flutter/material.dart';
import 'package:gamestation/main/homeModule/homrList.dart';
import './homeModule/homeSwiper.dart';
import './homeModule/homeGrid.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            HomeSwiper(),
            HomeGrid(),
            HomeList(
              list: [
                [1, 1, 1, 1, 1],
                [1, 1, 1, 1, 1],
                [1, 1, 1, 1, 1],
                [1, 1, 1, 1, 1],
                [1, 1, 1, 1, 1],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

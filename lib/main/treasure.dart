// 宝库

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gamestation/main/treasureModule/treasureList.dart';
import 'package:gamestation/tool/ToastCom.dart';

class TreasurePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('宝库'),
        actions: [
          IconButton(
            onPressed: () {
              ToastCom.show('搜索宝库', context);
            },
            icon: Icon(CupertinoIcons.search),
          )
        ],
      ),
      body: Center(
        child: TreasureList(
          list: [
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
          ],
        ),
      ),
    );
  }
}

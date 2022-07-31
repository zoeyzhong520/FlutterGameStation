// 攻略

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamestation/main/strategyModule/strategyList.dart';

class StrategyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('攻略'),
      ),
      body: Center(
        child: StrategyList(
          list: [1, 1, 1, 1, 1, 1, 1, 1],
        ),
      ),
    );
  }
}

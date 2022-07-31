// 攻略列表

import 'package:flutter/material.dart';

class StrategyList extends StatefulWidget {
  const StrategyList({Key? key, required this.list}) : super(key: key);
  final List list; // 列表数据

  _StrategyListState createState() => _StrategyListState();
}

class _StrategyListState extends State<StrategyList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: widget.list.length,
      itemBuilder: _cellForItem,
    );
  }

  Widget _cellForItem(BuildContext context, int index) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 10),
      height: 180,
      color: Colors.amber,
      child: Text('我是第${index + 1}个'),
    );
  }
}

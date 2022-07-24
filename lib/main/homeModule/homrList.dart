// 首页列表

import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List list = [1, 1, 1, 1, 1];

    // TODO: implement build
    return Container(
      height: 120,
      child: ListView.builder(
        itemBuilder: _cellForItem,
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _cellForItem(BuildContext context, int index) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
        color: Colors.primaries[index],
        width: screenSize.width / 3,
        child: Column(
          children: [
            Text('我是标题'),
            Text('我是内容${index + 1}'),
          ],
        ));
  }
}

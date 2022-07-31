// 宝库列表

import 'package:flutter/material.dart';
import 'package:gamestation/tool/ToastCom.dart';
import 'package:gamestation/tool/globle.dart';

class TreasureList extends StatefulWidget {
  const TreasureList({Key? key, required this.list}) : super(key: key);
  final List list;

  _TreasureListState createState() => _TreasureListState();
}

class _TreasureListState extends State<TreasureList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: [
          TreasureListMenu(context),
          TreasureListView(context),
        ],
      ),
    );
  }

  /// 左侧菜单
  Widget TreasureListMenu(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      child: ListView.builder(
        itemBuilder: _cellForMenuItem,
        itemCount: Globle.TreasureListMenuConfig.length,
      ),
    );
  }

  Widget _cellForMenuItem(BuildContext context, int index) {
    return GestureDetector(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Text('${Globle.TreasureListMenuConfig[index]['label']}'),
            Divider(),
          ],
        ),
      ),
      onTap: () {
        ToastCom.show(
            '${Globle.TreasureListMenuConfig[index]['label']}', context);
      },
    );
  }

  /// 右侧列表
  Widget TreasureListView(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3 * 2,
      child: GridView.builder(
        itemCount: widget.list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: _cellForListItem,
      ),
    );
  }

  Widget _cellForListItem(BuildContext context, int index) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        color: Colors.amber,
        child: Text('我是第${index + 1}个'),
      ),
    );
  }
}

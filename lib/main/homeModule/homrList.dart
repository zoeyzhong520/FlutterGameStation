// 首页列表
import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  const HomeList({Key? key, required this.list}) : super(key: key);
  final List list; // 列表数据

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
    // TODO: implement build
    return constructLoopListView();
  }

  /// 循环创建横向滚动的 ListView
  Widget constructLoopListView() {
    List<Widget> loopList = [];
    for (var element in widget.list) {
      loopList.add(Container(
        margin: EdgeInsets.only(top: 10),
        height: 120,
        child: ListView.builder(
          itemBuilder: _cellForItem,
          itemCount: element.length,
          scrollDirection: Axis.horizontal,
        ),
      ));
    }

    return Column(
      children: loopList,
    );
  }

  /// 横向滚动列表的每一个 Item
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

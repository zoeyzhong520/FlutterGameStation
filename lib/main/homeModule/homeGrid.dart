// 首页网格
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gamestation/tool/ToastCom.dart';

class HomeGrid extends StatelessWidget {
  final list = [
    {'icon': Icon(CupertinoIcons.time), 'label': '最新'},
    {'icon': Icon(CupertinoIcons.chart_bar), 'label': '排行榜'},
    {'icon': Icon(CupertinoIcons.book), 'label': '阅读量'},
    {'icon': Icon(CupertinoIcons.heart), 'label': '心愿'}
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.deepPurpleAccent,
      height: 60,
      child: constructGrid(context),
    );
  }

  /// 循环构建横向排列的 Widget
  Widget constructGrid(BuildContext context) {
    List<Widget> loopList = [];
    for (var element in list) {
      loopList.add(HomeGridItem(context, element));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: loopList,
    );
  }

  Widget HomeGridItem(BuildContext context, Map config) {
    return GestureDetector(
      child: Container(
        child: GestureDetector(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              config['icon'],
              Text(config['label']),
            ],
          ),
        ),
      ),
      onTap: () {
        print('${config['label']}');
        ToastCom.show('${config['label']}', context);
      },
    );
  }
}

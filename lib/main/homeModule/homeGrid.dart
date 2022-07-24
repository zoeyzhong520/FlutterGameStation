// 首页网格

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:toast/toast.dart';

class HomeGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.blue,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HomeGridItem(
            config: {'icon': Icon(CupertinoIcons.time), 'label': '最新'},
          ),
          HomeGridItem(
            config: {'icon': Icon(CupertinoIcons.chart_bar), 'label': '排行榜'},
          ),
          HomeGridItem(
            config: {'icon': Icon(CupertinoIcons.book), 'label': '阅读量'},
          ),
          HomeGridItem(
            config: {'icon': Icon(CupertinoIcons.heart), 'label': '心愿'},
          ),
        ],
      ),
    );
  }
}

class HomeGridItem extends StatelessWidget {
  final Map config;
  const HomeGridItem({Key? key, required this.config}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: GestureDetector(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            config['icon'],
            Text(config['label']),
          ],
        ),
        onTap: () {
          print('${this.config['label']}');
          Toast.show('${this.config['label']}', context);
        },
      ),
    );
  }
}

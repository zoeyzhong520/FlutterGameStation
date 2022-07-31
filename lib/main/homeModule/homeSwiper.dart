// 首页轮播图

import 'package:flutter/material.dart';

class HomeSwiper extends StatefulWidget {
  _HomeSwiperState createState() => _HomeSwiperState();
}

class _HomeSwiperState extends State<HomeSwiper> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      color: Colors.amber,
      height: 240,
      width: MediaQuery.of(context).size.width,
      child: Text('我是Banner'),
    );
  }
}

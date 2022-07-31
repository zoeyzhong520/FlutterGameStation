import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class ToastCom {
  static show(String msg, BuildContext context) {
    Toast.show(msg, context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
  }
}

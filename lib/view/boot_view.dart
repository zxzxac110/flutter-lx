// 初始进入显示的页面
import 'package:flutter/material.dart';

// 定时器
import 'dart:async';

// CupertinoActivityIndicator() 加载菊花图
import 'package:flutter/cupertino.dart';

class BootView extends StatefulWidget {
  @override
  _BootViewState createState() => _BootViewState();
}

class _BootViewState extends State<BootView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _created();
  }

  void _created() async {
    print('执行初始化的操作');
    print('然后跳到首页');
    var time = Timer.periodic(Duration(milliseconds: 1500), (t) {
      print('执行');
      Navigator.pop(context);
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    // 居中的菊花加载图
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}

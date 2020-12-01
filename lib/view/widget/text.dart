import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48.0,
        title: Text('目录'),
      ),
      body: Center(child: Text('index')),
    );
  }
}

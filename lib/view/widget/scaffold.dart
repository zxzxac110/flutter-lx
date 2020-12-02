import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 头部内容
      appBar: AppBar(
        title: Text('标题'),
      ),
      // 主内容
      body: Center(
        child: Text('123'),
      ),
      // 左侧抽屉 会覆盖返回按钮
      drawer: Drawer(),
      // 右侧抽屉
      endDrawer: Drawer(),
      // 底部导航
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: '首页', icon: Icon(Icons.book)),
          BottomNavigationBarItem(label: '首页', icon: Icon(Icons.book)),
        ],
      ),
      // 绿色小坨坨
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
      ),
      // 控制绿色小坨坨位置 默认是右侧
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // 位于 body 之下，bottomNavigationBar底部导航 之上，不会随着body滚动而滚动
      persistentFooterButtons: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('一个按钮'),
        ),
        FlatButton(
          onPressed: () {},
          child: Text('一个按钮'),
        ),
        FlatButton(
          onPressed: () {},
          child: Text('一个按钮'),
        ),
      ],
      // 位于 body 之下，persistentFooterButtons 之上，不会随着body滚动而滚动
      bottomSheet: BottomSheet(
          onClosing: () {},
          backgroundColor: Colors.lightBlue,
          builder: (context) {
            return Container(
              height: 150,
              alignment: Alignment.center,
              child: Text('一个蓝色块块'),
            );
          }),
    );
  }
}

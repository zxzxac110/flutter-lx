import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 右侧内容是否会设置成默认的 比如 返回按钮 抽屉按钮Drawer
        // false 会导致标题左对齐
        automaticallyImplyLeading: false,
        // 右侧显示内容 最终右侧显示内容 会覆盖默认内容
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        ),
        // 标题是否居中
        centerTitle: true,
        title: Text('标题'),
        // 右侧功能栏
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
        // flexibleSpace 一般用不到
        // bottom 导航条底部需要展示的widget 属性通常请求下设置TabBar
        //  bottom:
        backgroundColor: Colors.red,
        // 设置形状
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // icon样式 和字体样式
        // 设置AppBar上面Icon的主题颜色
        iconTheme: IconThemeData(color: Colors.grey, opacity: 0.6),
        // 设置导航右边图标的主题色，此时iconTheme对于右边图标颜色会失效
        actionsIconTheme: IconThemeData(color: Colors.black, opacity: 0.6),
        // 设置AppBar上面各种字体主题色
        textTheme: TextTheme(title: TextStyle(color: Colors.green)),
      ),
      // 主内容
    );
  }
}

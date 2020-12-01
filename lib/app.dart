import 'package:flutter/material.dart';

// 路由
import 'package:flutter_app_1201/router/router.dart';

class App extends StatefulWidget {
  // StatefulWidget 有状态控件
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 材料风格 最初包裹的玩意
      title: '单手操作', // 任务管理器显示名字 不是当前标题 也不是 app名字
      theme: ThemeData(
        primaryColor: Color(0xFF4cc169),
        // 主色，决定导航栏颜色
        accentColor: Color(0xFF4cc169),
        // 次级色，决定大多数Widget的颜色，如进度条、开关等。
        indicatorColor: Colors.black87,
        // Icon的默认样式
        backgroundColor: Color(0xFFfeffff),
        appBarTheme: AppBarTheme(
          elevation: 0.5,
          // 微信灰
          color: Color(0xFFecedee),
        ),
      ),
      debugShowCheckedModeBanner: false, // 调试模式时不显示右侧debug
      onGenerateRoute: router.buildPageRouteFactory(),
    );
  }
}

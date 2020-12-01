import 'package:flutter/material.dart';
import 'package:veno_router/veno_router.dart';

//页面
import 'package:flutter_app_1201/view/boot_view.dart';
import 'package:flutter_app_1201/view/catalogue.dart';
import 'file:///D:/lishihao/flutter/flutter_app_1201/lib/view/widget/text.dart';

final router = VenoRouter(routes: [
  VenoRoute(
    path: '/',
    builder: (Widget child, VenoRoute route) => Catalogue(), // BootView
  ),
  VenoRoute(
    path: '/boot',
    builder: (Widget child, VenoRoute route) => BootView(),
  ),
  VenoRoute(
    path: '/text',
    builder: (Widget child, VenoRoute route) => MyText(),
  ),
]);

import 'package:flutter/material.dart';
import 'package:veno_router/veno_router.dart';

//页面
import 'package:flutter_app_1201/view/boot_view.dart';
import 'package:flutter_app_1201/view/catalogue.dart';
import 'package:flutter_app_1201/view/login.dart';

import 'package:flutter_app_1201/view/widget/appBa.dart';
import 'package:flutter_app_1201/view/widget/image.dart';
import 'package:flutter_app_1201/view/widget/text.dart';
import 'package:flutter_app_1201/view/widget/scaffold.dart';

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
    path: '/login',
    builder: (Widget child, VenoRoute route) => Login(),
  ),
  VenoRoute(
    path: '/appBar',
    builder: (Widget child, VenoRoute route) => MyAppBar(),
  ),
  VenoRoute(
    path: '/image',
    builder: (Widget child, VenoRoute route) => MyImage(),
  ),
  VenoRoute(
    path: '/text',
    builder: (Widget child, VenoRoute route) => MyText(),
  ),
  VenoRoute(
    path: '/scaffold',
    builder: (Widget child, VenoRoute route) => MyScaffold(),
  ),
]);

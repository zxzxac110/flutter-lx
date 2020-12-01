import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48.0,
        title: Text('文本'),
      ),
      body: Wrap(children: [
        Text(
          'Text组件的使用Text组件的使用Text组件的使用',
          style: TextStyle(
            backgroundColor: Color(0xff000000),
            // 文字颜色
            color: Color(0xffff0000),
            // none 不显示装饰线条，underline 字体下方，overline 字体上方，lineThrough穿过文字
            // decoration: TextDecoration.underline,
            // solid 直线，double 双下划线，dotted 虚线，dashed 点下划线，wavy 波浪线
            decorationStyle: TextDecorationStyle.wavy,
            // 装饰线的颜色
            decorationColor: Colors.red,
            // 文字大小
            fontSize: 30.0,
            // normal 正常，italic 斜体
            fontStyle: FontStyle.normal,
            // 字体的粗细
            fontWeight: FontWeight.bold,
            // 文字间的宽度
            letterSpacing: 1.0,
            // 文本行与行的高度，作为字体大小的倍数（取值1~2，如1.2）
            // height: 1.5,
            // 单词和中文的间距
          ),
          // 段落的间距样式 我也部晓得这是什么鬼
          strutStyle: StrutStyle(
              // fontFamily: 'serif',
              // fontFamilyFallback: ['monospace', 'serif'],
              // fontSize: 10,
              // height: 1.5,
              // leading: 2.0,
              // fontWeight: FontWeight.w900,
              // fontStyle: FontStyle.normal,
              // forceStrutHeight: true,
              // debugLabel: 'text demo',
              ),
          // 文字对齐方式
          textAlign: TextAlign.center,
          // 文字排列方向 ltr 左到右，rtl右到左 和对齐方式差不多
          textDirection: TextDirection.ltr,
          // 用于选择区域特定字形的语言环境
          locale: Locale('zh_CN'),
          // 软包裹 ，文字是否应该在软断行出断行
          softWrap: true,
          // 如何处理视觉溢出:clip 剪切溢出的文本以修复其容器。ellipsis 使用省略号表示文本已溢出。fade 将溢出的文本淡化为透明。
          overflow: TextOverflow.ellipsis,
          // 文字的缩放比例
          textScaleFactor: 1.0,
          // 文本要跨越的可选最大行数,
          maxLines: 1,
          // 图像的语义描述，用于向Andoid上的TalkBack和iOS上的VoiceOver提供图像描述
          semanticsLabel: 'text demo',
          textWidthBasis: TextWidthBasis.longestLine,
          // textHeightBehavior 不知道
        ),
        Padding(
          padding: EdgeInsets.only(left:20),
          child: Text('老孟，一枚有态度的程序员'),
        ),
        Text('程序员'),
        Text('123',
            style: TextStyle(
              height: 1.4,
            ),
        ),
      ]),
      // body: Center(
      //     child: ),
    );
  }
}

import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('图片')),
      body: ListView(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(color: Colors.yellow),
            child: Image.asset(
              'images/qmsht.jpg',
              semanticLabel: '123',
              width: 100,
              height: 100,
              excludeFromSemantics: true,
            ),
          ),
          Wrap(
            children: [
              Image.asset('images/qmsht.jpg',
                  width: 100, height: 100, fit: BoxFit.fill),
              Image.asset('images/qmsht.jpg',
                  width: 100, height: 100, fit: BoxFit.contain),
              Image.asset('images/qmsht.jpg',
                  width: 100, height: 100, fit: BoxFit.cover),
              Image.asset('images/qmsht.jpg',
                  width: 100, height: 100, fit: BoxFit.fitWidth),
              Image.asset('images/qmsht.jpg',
                  width: 100, height: 100, fit: BoxFit.fitHeight),
              Image.asset('images/qmsht.jpg',
                  width: 100, height: 100, fit: BoxFit.scaleDown),
            ],
          ),
          Image.asset(
            'images/login.png',
            width: 100,
            height: 100,
            color: Colors.yellow,
            colorBlendMode: BlendMode.colorDodge,
            alignment: Alignment.center,
          ),
          Image.asset('images/login.png',
              height: 100,
              color: Colors.yellow,
              colorBlendMode: BlendMode.colorDodge,
              repeat: ImageRepeat.repeat),
          Image.asset('images/login.png',
              height: 100,
              color: Colors.yellow,
              colorBlendMode: BlendMode.colorDodge,
              repeat: ImageRepeat.repeat),
          Text('1'),
          Image.asset('images/login.png',
              height: 200,
              color: Colors.yellow,
              // centerSlice: Rect.fromLTRB(10, 11, 12, 13)
          ),
        ],
      ),
    );
  }
}
// image
// Image.asset:加载资源图片       不支持 热加载
// Image.file:加载本地图片
// Image.network:加载网络图片
// Image.memory:加载Uint8List资源图片

// semanticLabel	图像的语义描述。暂时不清楚作用
// excludeFromSemantics	默认false  是否启用图像的语义描述 暂时不清楚作用

// 当没有容器是 这个image所占的位置
// width 宽度
// height 高度

// 替代图片 透明的背景 或者有时强覆盖了图片
// color	背景色
// colorBlendMode 使图像与背景色混合 模式
//
// fit
// BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。
// BoxFit.contain:全图显示，显示原比例，可能会有空隙。
// BoxFit.cover：显示可能拉伸，可能裁切，充满（充满容器不变形）。
// BoxFit.fitWidth：宽度充满（横向充满），显示可能拉伸，可能裁切。
// BoxFit.fitHeight ：高度充满（竖向充满）,显示可能拉伸，可能裁切。
// BoxFit.scaleDown：效果和 contain 差不多，但是此属性不允许显示超过源图片大小，可小不可大。

// alignment: Alignment.center

// repeat 平铺
// ImageRepeat.repeat : 横向和纵向都进行重复，直到铺满整个画布。
// ImageRepeat.repeatX: 横向重复，纵向不重复。
// ImageRepeat.repeatY：纵向重复，横向不重复。
//
// centerSlice 设定拉伸部位，不能和fit一同使用 图片大于等于容器时 属性无效
// matchTextDirection	默认false  官方翻译：是否在TextDirection的方向上绘制图像。
// gaplessPlayback 默认false 官方翻译：当图像提供者发生变化时，是继续显示旧图像，默认不显示！
// filterQuality 默认FilterQuality.low 官方翻译：图像过滤器的质量级别。(渲染模式的质量)

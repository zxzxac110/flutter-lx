import 'package:flutter/material.dart';

import 'package:veno_router/veno_router.dart';

class Catalogue extends StatefulWidget {
  @override
  _Catalogue createState() => _Catalogue();
}

class _Catalogue extends State<Catalogue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48.0,
        title: Text('目录'),
      ),
      body: Container(
        child: _listContent(),
      ),
    );
  }

  Widget _listContent() {
    List navigation = [
      {
        'cn': '初始化页面',
        'en': '测试',
        'path': '/boot',
      },
      {
        'cn': '文本',
        'en': 'text',
        'path': '/text',
      },
    ];

    return ListView.separated(
      itemCount: navigation.length,
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemBuilder: (BuildContext context, int index) {
        Map item = navigation[index];
        return ListTile(
          title: Text(item['cn']),
          subtitle: Text(item['en']),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.of(context).pushNamed(item['path']);
          },
        );
      },
    );
  }
}

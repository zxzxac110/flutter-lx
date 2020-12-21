import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // 表单状态
  GlobalKey _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
        toolbarHeight: 48.0,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
        child: ListView(
          children: [
            _topLogo(),
            _inputTextArea(),
            Text('确定'),
          ],
        ),
      ),
    );
  }

  Widget _topLogo() {
    return Image.asset(
      'images/login.png',
      width: 128.0,
      height: 128.0,
      alignment: Alignment.center,
      fit: BoxFit.contain,
    );
  }

  Widget _inputTextArea() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Color(0xffeeeeee)),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(

            ),
            TextFormField(
              //   decoration: InputDecoration(
              //     icon: Icon(Icons.user,)
              //   ),
              // hintText
            ),
            TextFormField(),
            TextFormField(),
            Text('账号'),
            Text('密码'),
            Text('图像验证码'),
            Text('短信验证码'),
          ],
        ),
      ),
    );
  }
}

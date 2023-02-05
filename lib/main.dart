import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

//위젯으로 바꿔주기 위해 가장 기초적이고 쉬운 StatelessWidget 상속
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //어떤 family 스타일 쓰고싶은지 선언하기
    //return CupertinoApp()
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 9,
            title: Text('Hello flutter!'),
          ),
          body: Center(
            child: Text('Hello world!'),
          )),
    );
  }
}

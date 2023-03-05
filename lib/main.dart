import 'dart:io';

import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const App());
}

//위젯으로 바꿔주기 위해 가장 기초적이고 쉬운 StatelessWidget 상속
class App extends StatelessWidget {
  const App({super.key});

  @override //코드 재사용성 높임
  Widget build(BuildContext context) {
    //어떤 family 스타일 쓰고싶은지 선언하기
    //return CupertinoApp()
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..userAgent =
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36';
  }
}

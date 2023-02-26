import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';
import 'package:toonflix/services/api_service.dart';

void main() {
  ApiService().getTodaysToons();
  runApp(const App());
}

//위젯으로 바꿔주기 위해 가장 기초적이고 쉬운 StatelessWidget 상속
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //어떤 family 스타일 쓰고싶은지 선언하기
    //return CupertinoApp()
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

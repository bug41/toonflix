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
          backgroundColor: Colors.black,
          body: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Hey, Bug41',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Welcome !!!!!!!!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}

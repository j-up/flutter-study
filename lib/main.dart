import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        // notch 바로 아래 영역에 표시 (안전한 영역)
        body: SafeArea(
          // Column -> 세로 1줄씩 세로 3줄
          // Row -> 가로로 1개씩 가로 1줄에 3개
            child: Column(
              // 복수의 자식들이 있어야하기에 children 속성 사용
              children: <Widget>[
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                  child: Text('hello'),
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.blue,
                  child: Text('hello'),
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.red,
                  child: Text('hello'),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
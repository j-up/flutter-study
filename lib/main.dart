import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 정적(바뀌지않음)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Demos',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Demo Home Page')
    );
  }
}

// 동적(바뀜)
class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _State createState() => _State();
}

class _State extends State<MyHomePage> {
  // _ = private 변수
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        // 칼럼은 리스트뷰처럼 한줄 한줄 생김
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('many times:'),
          Text('$_counter', style: Theme.of(context).textTheme.display1)

        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter(),
        tooltip: 'increment',
        child: Icon(Icons.add)
      ),
    );
  }

  _incrementCounter() {
    // 바뀐사항 적용
    setState(() {
      _counter++;
    });
  }
}


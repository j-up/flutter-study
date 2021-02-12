import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List.generate(100, (index) => index).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      /*
      SingleChildScrollView: 화면 크기를 넘어설때 스크롤이 가능하게끔 하는 위젯 (하나의 자식을 포함하는 스크롤 가능한 위젯)
      Column을 사용하여 상하 스크롤을 구현할 수 있지만, Column은 위젯의 크기만큼 스크롤 영역을 가지기에 사용하기에 불편하다.
      이때 ListBody를 사용하면 스크롤 가능 역역이 가로로 꽉 차기 때문에 스크롤에 더 용이하다.
       */
      body: SingleChildScrollView(
        child: ListBody(
          children: items.map((i) => Text("$i")).toList(),
        )
      ),
    );
  }
}

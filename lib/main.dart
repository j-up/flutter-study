import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Scaffold example"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Image(
            image: NetworkImage("https://images.pexels.com/photos/67636/rose-blue-flower-rose-blooms-67636.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
          ),
        ),
      ),
  ));
}

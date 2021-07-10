import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dice"),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          // Expanded 크기에 맞게 레이아웃이 적용됨
          // 같은 영역의 Expanded가 있을때 flex는 가로세로 영역에 대한 비율 ex) 현재는 1:2의 비율로 들어감
          Expanded(
            // FlatButton 이미지나 텍스트에 버튼이벤트를 연결할때 사용
            child: FlatButton(
              onPressed: () {
                print("left dice click");
              },
              padding: EdgeInsets.all(16),
              child: Image.asset('images/dice2.png'))
          ),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Image.asset('images/dice2.png'))
          )
        ],
      ),
    );
  }
}

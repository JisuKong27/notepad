import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'edit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Text('NotePad', style: TextStyle(fontSize: 36, color: Colors.blue))
              ),
            ],
          ),
          ...LoadMemo() //...의 의미 : List가 다 돌 때 까지 계속해서 반복해서 함수를 실행해줌
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => EditPage())
          );
        },
        tooltip: '메모를 추가하려면 클릭하세요',
        label: Text('add Note'),
        icon: Icon(Icons.add),
      ),
    );
  }

  List<Widget> LoadMemo() {
    List<Widget> memoList = [];

    memoList.add(Container(color: Colors.redAccent, height: 100));
    memoList.add(Container(color: Colors.orange, height: 100));
    memoList.add(Container(color: Colors.yellow, height: 100));
    memoList.add(Container(color: Colors.green, height: 100));
    memoList.add(Container(color: Colors.blue, height: 100));
    memoList.add(Container(color: Colors.indigo, height: 100));
    memoList.add(Container(color: Colors.purpleAccent, height: 100));

    return memoList;
  }
}

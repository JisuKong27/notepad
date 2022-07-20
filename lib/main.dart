import 'package:flutter/material.dart';
import 'package:notepad/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange, primaryColor: Colors.white // 색 지정을 하지 않을 시 할당 된 색으로 입력 된다.
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

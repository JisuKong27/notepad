import 'package:flutter/material.dart';
import 'package:untitled5/writing_button.dart';

import 'memo_space.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 70, 20, 70),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children:[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: const Text(
                "메모",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueAccent
                ),
              ),
            ),
            Container(
              height: 440,
              child: SingleChildScrollView(
                child: Column(
                children:const [
                  MemoSpace(
                  ),
                  MemoSpace(
                  ),
                  MemoSpace(
                  ),
                  MemoSpace(
                  ),
                  MemoSpace(
                  ),
                ],
              ),
              ),
            ),
            const WritingButton(
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'main.dart';

class Notepad extends StatelessWidget {
  const Notepad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 70, 20, 50),
          width: MediaQuery.of(context).size.width,
          height: 600,
          color: Colors.white70,
          child: Column(
            children: [
              TextField(
                style: TextStyle(
                  fontSize: 20,
                  height: 1,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 120),
                )),
              Container(
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => const MyApp()));
                  }, child: null,
                  ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}

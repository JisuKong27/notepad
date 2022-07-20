import 'package:flutter/material.dart';
import 'package:notepad/main.dart';

class Notepad extends StatelessWidget {
  const Notepad({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(20, 70, 20, 50),
                width: MediaQuery.of(context).size.width,
                height: 600,
                color: Colors.white70,
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                    )
                )
            ),
      Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(50),
        ),
        margin: const EdgeInsets.fromLTRB(290, 0, 0, 0),
        width: 50,
        height: 50,
        child: ElevatedButton(onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const MyApp()));
        },
          child: null,
        ),
      ),
          ],
        ),
      ),
    );
  }
}
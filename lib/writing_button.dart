import 'package:flutter/material.dart';
import 'notepad.dart';

class WritingButton extends StatelessWidget {
  const WritingButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      margin: const EdgeInsets.fromLTRB(250, 100, 0, 0),
      width: 50,
      height: 50,
      child: ElevatedButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const Notepad()));
      },
        child: null,
      ),
    );
  }
}
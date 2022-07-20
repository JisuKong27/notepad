import 'package:flutter/material.dart';

class MemoSpace extends StatelessWidget {
  const MemoSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(25),
      ),
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      width: MediaQuery.of(context).size.width,
      height: 100,
    );
  }
}
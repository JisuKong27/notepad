import 'package:flutter/material.dart';
import 'package:notepad/database/db.dart';

import '../database/memo.dart';

class EditPage extends StatelessWidget {

  String title = '';
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete)),
          IconButton(
              onPressed: saveDB,
              icon: Icon(Icons.save)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              onChanged: (String title){this.title = title;}, // 내용이 바뀔때마다 이 함수를 실행하도록 함
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              //obscureText: true, // 비밀번호 가림용
              decoration: InputDecoration(
                // border: OutlineInputBorder(), // 볼록한 효과
                hintText: 'Title :',
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              onChanged: (String text){this.text = text;}, // 내용이 바뀔때마다 이 함수를 실행하도록 함
              keyboardType: TextInputType.multiline,
              maxLines: null,
              //obscureText: true, // 비밀번호 가림용
              decoration: InputDecoration(
                // border: OutlineInputBorder(), // 볼록한 효과
                hintText: 'Contents .. ',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> saveDB() async {

    DBHelper sd = DBHelper();

    var fido = Memo(
      id: 3,
      title: this.title,
      text: this.text,
      createTime: DateTime.now().toString(),
      editTime: DateTime.now().toString(),
    );

    await sd.insertMemo(fido);

    print(await sd.memos());
  }
}

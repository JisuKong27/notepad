class Memo {
  final int id;
  final String title;
  final String text;
  final String createTime;
  final String editTime;

  Memo({required this.id, required this.title, required this.text, required this.createTime, required this.editTime});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'text': text,
      'createTime': createTime,
      'editTime': editTime
    };
  }

  @override
  String toString() {
    return 'Memo{id: $id, title: $title, text: $text, createTime: $createTime, editTime: $editTime}';
  }
}
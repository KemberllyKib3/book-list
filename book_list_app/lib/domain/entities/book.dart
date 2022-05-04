import 'dart:convert';

class Book {
  final int id;
  final String title;
  final String subtitle;
  final String text;

  Book({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.text,
  });



  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'text': text,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      subtitle: map['subtitle'] ?? '',
      text: map['text'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) => Book.fromMap(json.decode(source));
}

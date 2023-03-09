// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Blog {
  int? id;
  String category;
  String title;
  String content;
  String tags;
  String createDate;
  String modifyDate;
  Blog({
    this.id,
    required this.category,
    required this.title,
    required this.content,
    required this.tags,
    required this.createDate,
    required this.modifyDate,
  });

  Blog copyWith({
    int? id,
    String? category,
    String? title,
    String? content,
    String? tags,
    String? createDate,
    String? modifyDate,
  }) {
    return Blog(
      id: id ?? this.id,
      category: category ?? this.category,
      title: title ?? this.title,
      content: content ?? this.content,
      tags: tags ?? this.tags,
      createDate: createDate ?? this.createDate,
      modifyDate: modifyDate ?? this.modifyDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'category': category,
      'title': title,
      'content': content,
      'tags': tags,
      'createDate': createDate,
      'modifyDate': modifyDate,
    };
  }

  factory Blog.fromMap(Map<String, dynamic> map) {
    return Blog(
      id: map['id'] != null ? map['id'] as int : null,
      category: map['category'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      tags: map['tags'] as String,
      createDate: map['createDate'] as String,
      modifyDate: map['modifyDate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Blog.fromJson(String source) => Blog.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Blog(id: $id, category: $category, title: $title, content: $content, tags: $tags, createDate: $createDate, modifyDate: $modifyDate)';
  }

  @override
  bool operator ==(covariant Blog other) {
    if (identical(this, other)) return true;

    return other.id == id && other.category == category && other.title == title && other.content == content && other.tags == tags && other.createDate == createDate && other.modifyDate == modifyDate;
  }

  @override
  int get hashCode {
    return id.hashCode ^ category.hashCode ^ title.hashCode ^ content.hashCode ^ tags.hashCode ^ createDate.hashCode ^ modifyDate.hashCode;
  }
}

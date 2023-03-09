import 'package:dongsilweb/data/datasources/sqflite_datasource.dart';
import 'package:dongsilweb/data/model/blog_model.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

Future<List<Blog>> getBlogsByType({required String albumType, int? startDate, int? endDate}) async {
  var db = await DataSource.getDataSource().db;
  List<Blog> listBlog = [];

  try {
    List<Map<String, dynamic>> maps = await db.query("album",
        columns: [
          "id",
          "album_type",
          "file_path",
          "comment",
          "detail",
          "dday_id",
          "event_date",
          "create_date",
          "modify_date",
          "week_of_year",
        ],
        where: startDate != null && endDate != null ? 'album_type =? and event_date >= ? and event_date <= ?' : 'album_type = ?',
        whereArgs: startDate != null && endDate != null ? [albumType, startDate, endDate] : [albumType],
        orderBy: 'event_date desc');

    if (maps.isNotEmpty) {
      for (Map<String, dynamic> item in maps) {
        listBlog.add(Blog.fromMap(item));
        debugPrint('event_date : ${DateTime.fromMillisecondsSinceEpoch(item["event_date"]).toString()}');
        debugPrint('create_date : ${DateTime.fromMillisecondsSinceEpoch(item["create_date"]).toString()}');
        debugPrint('modify_date : ${DateTime.fromMillisecondsSinceEpoch(item["modify_date"]).toString()}');
      }
    }
    return listBlog;
  } on Exception {
    throw Exception();
  }
}

Future<int> insertBlog({required Blog blog}) async {
  var db = await DataSource.getDataSource().db;

  try {
    return await db.insert("blog", blog.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
  } on Exception {
    throw Exception();
  }
}

// import 'package:dongsilweb/data/datasources/sqflite_datasource.dart';
// import 'package:dongsilweb/data/model/blog_model.dart';
// import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';

// class BlogRepository {
//   Future<List<Blog>> getBlogsByType({required String category, int? startDate, int? endDate}) async {
//     var db = await DataSource.getDataSource().db;
//     List<Blog> listBlog = [];

//     try {
//       List<Map<String, dynamic>> maps = await db.query("blog",
//           columns: [
//             "id",
//             "category",
//             "title",
//             "content",
//             "createDate",
//             "modifyDate",
//           ],
//           where: startDate != null && endDate != null ? 'category =? and createDate >= ? and createDate <= ?' : 'category = ?',
//           whereArgs: startDate != null && endDate != null ? [category, startDate, endDate] : [category],
//           orderBy: 'createDate desc');

//       if (maps.isNotEmpty) {
//         for (Map<String, dynamic> item in maps) {
//           listBlog.add(Blog.fromMap(item));
//           debugPrint('createDate : ${DateTime.fromMillisecondsSinceEpoch(item["createDate"]).toString()}');
//           debugPrint('modifyDate : ${DateTime.fromMillisecondsSinceEpoch(item["modifyDate"]).toString()}');
//         }
//       }
//       return listBlog;
//     } on Exception {
//       throw Exception();
//     }
//   }

//   Future<int> insertBlog({required Blog blog}) async {
//     var db = await DataSource.getDataSource().db;

//     try {
//       return await db.insert("blog", blog.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
//     } on Exception {
//       throw Exception();
//     }
//   }
// }

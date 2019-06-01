import 'package:flutterhackathon/model/posts.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class PostRepository {
  Future<List<Posts>> getPosts() async {
    List<Posts> posts = List<Posts>();
    final response = await parseJsonFromAssets('dummydata.json');
    print(response);
    response.forEach((key,value) {
      posts.add(Posts.fromJson(value));
    });
    return posts;
  }

  Future<Map<String, dynamic>> parseJsonFromAssets(String assetsPath) async {
    return rootBundle.loadString(assetsPath)
        .then((jsonStr) => jsonDecode(jsonStr));
  }
}
import 'dart:convert';
import 'package:flutter_mvc_demo/models/Post.dart';
import 'package:flutter_mvc_demo/network_services/post_service.dart';
import 'package:http/http.dart' as http;

class PostController {

  Future<Post> getAllPosts() async {

    final http.Response response = await PostService().getAllPosts();

    switch (response.statusCode) {

      case 200:
        return Post.fromJson(jsonDecode(response.body));
    }
  }

  getPostById(id) async {

    final http.Response response = await PostService().getPostById(id);

    switch (response.statusCode) {

      case 401:
      case 200:
        return Post.fromJson(jsonDecode(response.body));
    }

  }
}
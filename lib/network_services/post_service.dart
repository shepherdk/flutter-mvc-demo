import 'package:flutter_mvc_demo/network_utils/network_utils.dart';
import 'package:flutter_mvc_demo/utils/urls.dart';

class PostService {

  getAllPosts() {
    return NetworkUtils().get(PostsURL.defaultURL);
  }

  getPostById(id) {
    return NetworkUtils().get(PostsURL.defaultURL + '/$id');
  }
}
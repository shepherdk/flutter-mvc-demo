import 'package:flutter_mvc_demo/utils/urls.dart';
import 'package:http/http.dart';

class NetworkUtils {

  static const String baseURL = BaseURL.dev;

  Future<Response> get(operation) async  {
    // return response
    return await get(baseURL + operation);
  }
  // headers
  // post, get, put, create
}
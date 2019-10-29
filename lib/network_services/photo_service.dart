import 'package:flutter_mvc_demo/network_utils/network_utils.dart';
import 'package:flutter_mvc_demo/utils/urls.dart';

class PhotosService {
  
  getAllPhotos() {
    return NetworkUtils().get(PhotosURL.defaultURL);
  }
  
  getPhotoById(id) {
    return NetworkUtils().get(PhotosURL.defaultURL);
  }
}
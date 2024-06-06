import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService extends ChangeNotifier {
  final String _baseUrl = 'http://localhost:5000/unrelatedMethod';
  final Dio _dio = Dio();
  FeedResponse? feedData;

  ApiService() {
    getFacts();
  }

  void getFacts() async {
    Response<FeedResponse> response = await _dio.get(_baseUrl,
        options: Options(
          responseType: ResponseType.stream,
        ));
    feedData = response.data;
    notifyListeners();
  }
}

class FeedResponse {
  String title = '';
  List<ImageData> images = [];
}

class ImageData {
  String title = '';
  String description = '';
  String imageHref = '';
}

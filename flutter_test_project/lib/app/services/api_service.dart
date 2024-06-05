import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService extends ChangeNotifier {
  final String _baseUrl =
      'https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json';
  final Dio _dio = Dio();
  FeedResponse? feedData;

  ApiService() {
    getFacts();
  }

  void getFacts() async {
    _dio.get(_baseUrl).asStream().map((response) => {
          feedData = FeedResponse()
            ..title = response.data['title']
            ..images = (response.data['rows'] as List)
                .map((image) => ImageData()
                  ..title = image['title']
                  ..description = image['description']
                  ..imageHref = image['imageHref'])
                .toList()
        });
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

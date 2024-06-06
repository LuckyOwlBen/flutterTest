import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/json_conversion/feed_response_converter.dart';

class ApiService extends ChangeNotifier {
  final String _baseUrl = 'http://localhost:5000/unrelatedMethod';
  final Dio _dio = Dio();
  FeedResponse? feedData;

  ApiService() {
    getFacts();
  }

  void getFacts() async {
    try {
      Response response = await _dio.get(_baseUrl);
      Map<String, dynamic> responseData = jsonDecode(response.data);
      feedData = FeedResponse.fromJson(responseData);
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_test_project/app/services/api_service.dart';

class FactStoreWidget extends ChangeNotifier {
  late Future<Response<FeedResponse>> _futureData;
  FeedResponse? _data;
  final BuildContext context;

  FactStoreWidget(this.context) {
    final apiService = Provider.of<ApiService>(context, listen: false);
    _futureData = apiService.getData();
    _futureData.then((data) {
      _data = data.body;
      notifyListeners();
    });
  }

  FeedResponse? get data => _data;
}

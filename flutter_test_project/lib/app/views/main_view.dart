import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/api_service.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ApiService>(
      builder: (context, apiService, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(apiService.feedData?.title ?? ''),
          ),
          body: ListView.builder(
            itemCount: apiService.feedData?.images.length ?? 0,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(apiService.feedData?.images[index].title ?? ''),
                subtitle:
                    Text(apiService.feedData?.images[index].description ?? ''),
                leading: Image.network(
                    apiService.feedData?.images[index].imageHref ?? ''),
              );
            },
          ),
        );
      },
    );
  }
}

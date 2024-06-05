import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/services/api_service.dart';
import 'package:flutter_test_project/app/views/main_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ApiService(), child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MainView(),
        ),
      ),
    );
  }
}

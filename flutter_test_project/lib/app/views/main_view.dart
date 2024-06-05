import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/outputs/fact_store.dart';
import 'package:provider/provider.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FactStoreWidget>(builder: (context, factStore, child) {
      if (factStore.data == null) {
        return const CircularProgressIndicator();
      } else {
        return Text('Data: ${factStore.data}');
      }
    });
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FactStoreWidget>(
      builder: (context, factStore, child) {
        if (factStore.data == null) {
          return CircularProgressIndicator();
        } else {
          return Text('Data: ${factStore.data}');
        }
      },
    );
  }
}

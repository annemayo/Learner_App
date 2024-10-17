import 'package:flutter/material.dart';
import 'package:udemy_learning_app/app/app.dart';

class Test extends StatelessWidget {
  const Test({super.key});
  void updateAppState() {
    MyApp.instance.appState = 12;
  }

  void getAppState() {
    print(MyApp.instance.appState);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

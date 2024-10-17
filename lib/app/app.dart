import 'package:flutter/material.dart';
import 'package:udemy_learning_app/presentation/resources/routes_manager.dart';
import 'package:udemy_learning_app/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  //private constructor often used in the singleton pattern
  //ensures that the app has only one instance through the app
  //by making it private makes external code not to access it
  MyApp._internal();
  int appState = 0;
  static final MyApp instance = MyApp._internal(); //single instance --singleton

  factory MyApp() => instance; //factory for internal class instance

  @override
  State<MyApp> createState() => _MyAppState(); //app state
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashRoute,
      theme: getAppTheme(),
    );
  }
}

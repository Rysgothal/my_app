import 'package:flutter/material.dart';
import 'package:my_app/src/app_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: const AppWidget(),
    );
  }
}

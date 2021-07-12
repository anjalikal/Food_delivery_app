import 'package:flutter/material.dart';
import 'package:food_app/pages/IndexPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      home: IndexPage(),
    );
  }
}

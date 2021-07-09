import 'package:flutter/material.dart';
import 'package:food_app/pages/IndexPage.dart';
import 'package:food_app/pages/checkout_page.dart';
import 'package:food_app/pages/forgot_password_page.dart';
import 'package:food_app/pages/select_city_page.dart';
import 'package:food_app/pages/z_extra_page.dart';

import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';
import 'pages/veg_dishes_page.dart';

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

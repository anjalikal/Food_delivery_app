import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/images_path.dart';
import 'package:food_app/pages/IndexPage.dart';
import 'package:food_app/pages/sign_in_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),goToHomePage);
    super.initState();
  }

  goToHomePage() {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => SignInPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: ColorRes.kGreenColor,
          image: DecorationImage(
            image: AssetImage(ImagePath.logo),
          )
        ),
      ),
    );
  }
}

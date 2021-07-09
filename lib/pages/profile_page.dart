import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/constants.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: deviceHeight * 0.28,
                width: deviceWidth,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile_page_img.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      BlendMode.dstATop,
                    ),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'User Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              child: Stack(
                children: [
                  Container(
                    width: 135,
                    height: 135,
                    transform: Matrix4.translationValues(0, -65, 0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 3,
                    bottom: 80,
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorRes.kGreenColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                    child: Material(
                      borderRadius: BorderRadius.circular(8),
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: deviceWidth,
                        child: Text('Account Detail',textScaleFactor: 1.1,
                        style: TextStyle(
                          color: Colors.black,
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                    child: Material(
                      borderRadius: BorderRadius.circular(8),
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: deviceWidth,
                        child: Text('Order Detail',textScaleFactor: 1.1,
                          style: TextStyle(
                            color: Colors.black,
                          ),),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                    child: Material(
                      borderRadius: BorderRadius.circular(8),
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: deviceWidth,
                        child: Text('Change Address',textScaleFactor: 1.1,
                          style: TextStyle(
                            color: Colors.black,
                          ),),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

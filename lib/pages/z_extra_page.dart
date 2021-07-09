import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class ExtraPage extends StatefulWidget {
  const ExtraPage({Key? key}) : super(key: key);

  @override
  _ExtraPageState createState() => _ExtraPageState();
}


class _ExtraPageState extends State<ExtraPage> {

  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
        centerTitle: true,
        backgroundColor: kGreenColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            height: 120,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('images/cart_img.jpg'),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Product Name ',
                                softWrap: true,
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text('\$200', textScaleFactor: 1.1,),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      if (itemCount < 2) {
                                      } else {
                                        setState(() {
                                          itemCount--;
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: 22,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.orangeAccent,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '-',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    itemCount.toString(),
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(width: 5),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        itemCount++;
                                      });
                                    },
                                    child: Container(
                                      width: 22,
                                      height: 22,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.orangeAccent,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: IconButton(
                    onPressed: () {
                      print('Clicked on Delete');
                    },
                    color: Colors.red,
                    icon: Icon(Icons.delete_rounded),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

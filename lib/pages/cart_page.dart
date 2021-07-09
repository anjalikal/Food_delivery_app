import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGreenColor,
        centerTitle: true,
        title: Text('Your Food Cart'),
      ),
      body: Container(
        child: Column(
          children: [
            cartItemsList(context),
            SizedBox(height: 10),
            promoCodeField(),
            SizedBox(height: 25),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cart Total',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '\$900.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tax',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '\$25.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '\$5.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Promo Discount',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '\$0.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub Total',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '\$930.00',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                width: deviceWidth,
                decoration: BoxDecoration(
                    color: kGreenColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0),
                      child: Text(
                        'Reset',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cartItemsList(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      height: deviceHeight * 0.42,
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, int) {
          return Padding(
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
                                  )),
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
                                  child: Text(
                                    '\$200',
                                    textScaleFactor: 1.1,
                                  ),
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
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                            borderRadius:
                                                BorderRadius.circular(20),
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
          );
        },
      ),
    );
  }

  Widget promoCodeField() {
    return Container(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: kGreenColor,
            hintText: "Promo Code",
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: kGreenColor, width: 2, style: BorderStyle.solid),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kGreenColor),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kGreenColor),
              borderRadius: BorderRadius.circular(8),
            ),
            suffixIcon: Container(
              width: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kGreenColor,
              ),
              child: Center(
                child: Text(
                  'Apply',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

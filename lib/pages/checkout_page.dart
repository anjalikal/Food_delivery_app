import 'package:flutter/material.dart';
import 'package:food_app/common/color_resources.dart';
import 'package:food_app/common/constants.dart';

enum DeliveryWay { Delivery, Pickup }
enum PaymentMethod {COD, Cards, Paypal}

class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  DeliveryWay dWay = DeliveryWay.Delivery;
  PaymentMethod pMethod = PaymentMethod.COD;
  TextEditingController addressController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        centerTitle: true,
        backgroundColor: ColorRes.kGreenColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'How do you want to get your food?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            textScaleFactor: 1.2,
                            softWrap: true,
                            maxLines: 2,
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  'Delivery',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: dWay == DeliveryWay.Delivery
                                        ? ColorRes.kGreenColor
                                        : Colors.black,
                                  ),
                                ),
                                leading: Radio(
                                  value: DeliveryWay.Delivery,
                                  groupValue: dWay,
                                  onChanged: (DeliveryWay? value) {
                                    setState(() {
                                      dWay = value!;
                                      print(dWay);
                                    });
                                  },
                                  activeColor: ColorRes.kGreenColor,
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Pickup',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: dWay == DeliveryWay.Pickup
                                        ? ColorRes.kGreenColor
                                        : Colors.black,
                                  ),
                                ),
                                leading: Radio(
                                  value: DeliveryWay.Pickup,
                                  groupValue: dWay,
                                  onChanged: (DeliveryWay? value) {
                                    setState(() {
                                      dWay = value!;
                                      print(dWay);
                                    });
                                  },
                                  activeColor: ColorRes.kGreenColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Enter Your Delivery Address',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            textScaleFactor: 1.2,
                            softWrap: true,
                            maxLines: 2,
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Material(
                              elevation: 10,
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Form(
                                  key: formKey,
                                  child: TextFormField(
                                    controller: addressController,
                                    validator: (value){
                                      if(addressController.text == null || addressController.text.isEmpty){
                                        return "Please Enter the Address";
                                      }
                                    },
                                    maxLines: 4,
                                    cursorColor: ColorRes.kGreenColor,
                                    decoration: InputDecoration(
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Select Payment Methods',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            textScaleFactor: 1.2,
                            softWrap: true,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Radio(
                                      activeColor: ColorRes.kGreenColor,
                                      value: PaymentMethod.COD,
                                      groupValue: pMethod,
                                      onChanged: (PaymentMethod? value){
                                        setState(() {
                                          pMethod = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('images/cod.png',width: 30, height: 30,),
                                      SizedBox(height: 5),
                                      Text('Cash On Delivery',textScaleFactor: 1.1,),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Container(
                                    child: Radio(
                                      activeColor: ColorRes.kGreenColor,
                                      value: PaymentMethod.Cards,
                                      groupValue: pMethod,
                                      onChanged: (PaymentMethod? value){
                                        setState(() {
                                          pMethod = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('images/card.png',width: 30, height: 30,),
                                      SizedBox(height: 5),
                                      Text('Credit Or Debit Card',textScaleFactor: 1.1,),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Container(
                                    child: Radio(
                                      activeColor: ColorRes.kGreenColor,
                                      value: PaymentMethod.Paypal,
                                      groupValue: pMethod,
                                      onChanged: (PaymentMethod? value){
                                        setState(() {
                                          pMethod = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset('images/paypal.png',width: 30, height: 30,),
                                      SizedBox(height: 5),
                                      Text('Paypal',textScaleFactor: 1.1,),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      if(formKey.currentState!.validate()){
                        print('Clicked Print : $dWay');
                        print('Clicked Print : $pMethod');
                        print('Clicked Print : ${addressController.text}');
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: deviceWidth,
                        decoration: BoxDecoration(
                            color: ColorRes.kGreenColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 9.0),
                              child: Text(
                                'Confirm Order',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
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

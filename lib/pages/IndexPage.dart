import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'cart_page.dart';
import 'chat_page.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'search_page.dart';

class IndexPage extends StatefulWidget {

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int currentTab = 4;

  Widget currentScreen = HomePage();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home, color: Colors.white),
        backgroundColor: Colors.orangeAccent,

        onPressed: () {
          setState(() {
            currentScreen = HomePage();
            currentTab = 4;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: kGreenColor,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          height: 55,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentTab = 0;
                        currentScreen = CartPage();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_rounded,
                          size: 30,
                          color: currentTab == 0
                              ? Colors.orangeAccent
                              : Colors.white,
                        ),
                        Text(
                          'Cart',
                          style: TextStyle(
                              color: currentTab == 0
                                  ? Colors.orangeAccent
                                  : Colors.white),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = SearchPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_rounded,
                          size: 30,
                          color: currentTab == 1
                              ? Colors.orangeAccent
                              : Colors.white,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                              color: currentTab == 1
                                  ? Colors.orangeAccent
                                  : Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentTab = 2;
                        currentScreen = ChatPage();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_bubble_rounded,
                          size: 30,
                          color: currentTab == 2
                              ? Colors.orangeAccent
                              : Colors.white,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                              color: currentTab == 2
                                  ? Colors.orangeAccent
                                  : Colors.white),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentTab = 3;
                        currentScreen = ProfilePage();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_rounded,
                          size: 30,
                          color: currentTab == 3
                              ? Colors.orangeAccent
                              : Colors.white,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: currentTab == 3
                                  ? Colors.orangeAccent
                                  : Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

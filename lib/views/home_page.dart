import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui_clone/views/home_screen.dart';
import 'package:instagram_ui_clone/views/notificationscreen.dart';
import 'package:instagram_ui_clone/views/post_screen.dart';
import 'package:instagram_ui_clone/views/profile_screen.dart';
import 'package:instagram_ui_clone/views/search_screen.dart';
import 'package:instagram_ui_clone/widgets/widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;

  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    NotificaionScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: "",
              activeIcon: Icon(
                Icons.home_filled,
                size: 30,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30,),
              label: "",
              activeIcon: Icon(Icons.search, size: 30,)),
          BottomNavigationBarItem(
              icon: AddRoundedIcon(
                bgColor: Colors.white,
                fgColor: Colors.black,
              ),
              label: "",
              activeIcon:
                  AddRoundedIcon(bgColor: Colors.black, fgColor: Colors.white)),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "",
              activeIcon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 30,
              ),
              label: "",
              activeIcon: Icon(
                Icons.account_circle,
                size: 30,
              )),
        ],
        currentIndex: _selectedItem,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
        iconSize: 30,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}

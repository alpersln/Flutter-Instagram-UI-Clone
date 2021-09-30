import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/pages/account.dart';
import 'package:instagram_ui_clone/pages/home.dart';
import 'package:instagram_ui_clone/pages/reels.dart';
import 'package:instagram_ui_clone/pages/search.dart';
import 'package:instagram_ui_clone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTabbar = 0;
  void _changeBottombar(int index) {
    setState(() {
      _selectedTabbar = index;
    });
  }

  final List<Widget> _pages = [
    UserSearch(),
    UserHome(),
    //UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTabbar],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTabbar,
        onTap: _changeBottombar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }
}

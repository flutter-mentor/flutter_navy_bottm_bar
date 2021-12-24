import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:bottom_navy_barr/screens/chats.dart';
import 'package:bottom_navy_barr/screens/friends.dart';
import 'package:bottom_navy_barr/screens/home.dart';
import 'package:bottom_navy_barr/screens/settings.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int currentIndex = 0;
  List screens = [
    Home(),
    Chats(),
    Friends(),
    Settings(),
  ];

  List titles = [
    Text(
      'Home',
      style: TextStyle(
        color: Colors.orange,
      ),
    ),
    Text(
      'Chats',
      style: TextStyle(
        color: Colors.blue,
      ),
    ),
    Text(
      'Friends',
      style: TextStyle(
        color: Colors.pink,
      ),
    ),
    Text(
      'Settings',
      style: TextStyle(
        color: Colors.deepPurple,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        items: [
          BottomNavyBarItem(
            inactiveColor: Colors.grey,
            activeColor: Colors.orange,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.grey,
            activeColor: Colors.blue,
            icon: Icon(Icons.chat),
            title: Text('Chats'),
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.grey,
            activeColor: Colors.pink,
            icon: Icon(Icons.people),
            title: Text('Friends'),
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.grey,
            activeColor: Colors.deepPurple,
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: titles[currentIndex],
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
      ),
    );
  }
}

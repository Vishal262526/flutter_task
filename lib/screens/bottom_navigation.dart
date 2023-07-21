import 'package:flutter/material.dart';
import 'package:flutter_task/constants/colors.dart';
import 'package:flutter_task/screens/home_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _menuOptions = <Widget>[
    HomeScreen(),
    Text('Learn', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500)),
    Text('Hub', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500)),
    Text('Chat', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500)),
    Text('Profile',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500)),
  ];

  void onIndexChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _menuOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hub_outlined),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_outlined),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kBlackColor,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: onIndexChanged,
      ),
    );
  }
}

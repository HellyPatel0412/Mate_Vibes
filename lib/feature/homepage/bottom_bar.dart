import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mate_vibes/feature/chat/chat.dart';
import 'package:mate_vibes/feature/donation/people/list.dart';
import 'package:mate_vibes/feature/donation/subscribe.dart';
import 'package:mate_vibes/feature/homepage/home_page.dart';
import 'package:mate_vibes/feature/notifications/noti.dart';
import 'package:mate_vibes/feature/profile/profile_page.dart';

class Navi extends StatefulWidget {
  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  int _index = 0;
  final pages = [HomePage(), Noti(), People(), ChatPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          backgroundColor: Colors.black,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/Bar1.png'),
                  color: Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('images/Bar2.png'),
                  color: Colors.black87,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.grey,
                ),
                label: ''),
          ]),
    );
  }
}

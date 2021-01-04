import 'package:flutter/material.dart';

class WYBottomBarItem extends BottomNavigationBarItem {
  WYBottomBarItem(String iconName, String title)
      : super(
          title: Text(title),
          icon: Image.asset(
            "assets/images/tabbar/$iconName.png",
            width: 32,
            gaplessPlayback: true,
            color: Colors.grey,
          ),
          activeIcon: Image.asset(
            "assets/images/tabbar/$iconName.png",
            width: 32,
            gaplessPlayback: true,
            color: Colors.blue,
          ),
        );
}

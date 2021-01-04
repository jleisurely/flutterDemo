import 'package:flutter/material.dart';
import 'package:flutteroc/home/part_refresh.dart';
import 'package:flutteroc/mine/mine.dart';

import '../home/home.dart';
import 'bottom_tabbar_item.dart';

List<BottomNavigationBarItem> items = [
  WYBottomBarItem("home", "首页"),
  WYBottomBarItem("profile", "我的"),
  WYBottomBarItem("profile", "Mine"),
];

List<Widget> pages = [WYHomePage(), TestRoute(), WYMinePage()];

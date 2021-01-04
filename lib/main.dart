import 'package:flutter/material.dart';
import 'package:flutteroc/router/WYRouter.dart';

import 'main/bottom_tabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: WYRouter.routers,
      onGenerateRoute: WYRouter.generatRouter,
      onUnknownRoute: WYRouter.unknownRouter,
      home: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: items,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (idx) {
            setState(() {
              _currentIndex = idx;
            });
          },
        ),
      ),
    );
  }
}

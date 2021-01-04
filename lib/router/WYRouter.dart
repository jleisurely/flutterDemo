import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteroc/animation/custom_animation.dart';
import 'package:flutteroc/animation/custom_textfield.dart';
import 'package:flutteroc/animation/hero_animation.dart';
import 'package:flutteroc/animation/orientation.dart';
import 'package:flutteroc/animation/page_animation.dart';
import 'package:flutteroc/animation/share_preferences.dart';
import 'package:flutteroc/animation/web_socket.dart';
import 'package:flutteroc/home/home.dart';
import 'package:flutteroc/home/navigation.dart';
import 'package:flutteroc/home/textfield.dart';
import 'package:flutteroc/mine/mine.dart';

import '../animation/custom_animation.dart';
import '../animation/drag_animation.dart';
import '../animation/form_page.dart';

class WYRouter {
  static final Map<String, WidgetBuilder> routers = {
    WYHomePage.routeName: (ctx) => WYHomePage(),
    WYMinePage.routeName: (ctx) => WYMinePage(),
    WYNavigation.routeName: (ctx) => WYNavigation(),
    WYTextFieldDemo.routeName: (ctx) => WYTextFieldDemo(),
    AnimatedContainerApp.routeName: (ctx) => AnimatedContainerApp(),
    PhysicsCardDragDemo.routeName: (ctx) => PhysicsCardDragDemo(),
    Page1.routeName: (ctx) => Page1(),
    OrientationPage.routeName: (ctx) => OrientationPage(),
    FormPage.routeName: (ctx) => FormPage(),
    TextFieldDemo.routeName: (ctx) => TextFieldDemo(),
    HeroApp.routeName: (ctx) => HeroApp(),
    CustomSocket.routeName: (ctx) => CustomSocket(),
    CustomSharePreferences.routeName: (ctx) => CustomSharePreferences(),
  };
  static final RouteFactory generatRouter = (setting) {
    if (setting.name == WYMinePage.routeName) {
      return MaterialPageRoute(builder: (ctx) {
        return WYMinePage();
      });
    }
    return null;
  };
  static final RouteFactory unknownRouter = (setting) {
    return MaterialPageRoute(builder: (ctx) {
      return WYTextFieldDemo();
    });
  };
}

import 'package:flutter/material.dart';
import 'package:flutteroc/animation/custom_animation.dart';
import 'package:flutteroc/animation/custom_textfield.dart';
import 'package:flutteroc/animation/drag_animation.dart';
import 'package:flutteroc/animation/form_page.dart';
import 'package:flutteroc/animation/hero_animation.dart';
import 'package:flutteroc/animation/orientation.dart';
import 'package:flutteroc/animation/page_animation.dart';
import 'package:flutteroc/animation/share_preferences.dart';
import 'package:flutteroc/animation/web_socket.dart';
import 'package:flutteroc/home/textfield.dart';

class WYMinePage extends StatelessWidget {
  static final String routeName = "/mine";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mine"),
      ),
      body: Column(
        children: [
          Center(
              child: RaisedButton(
            child: Text(
              "跳转Textfield",
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return WYTextFieldDemo();
              }));
            },
          )),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AnimatedContainerApp.routeName);
            },
            child: Text("跳转animation"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(PhysicsCardDragDemo.routeName);
            },
            child: Text("跳转drag"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Page1.routeName);
            },
            child: Text("跳转page_animation"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(OrientationPage.routeName);
            },
            child: Text("跳转page_orientation"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(FormPage.routeName);
            },
            child: Text("跳转page_form"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(TextFieldDemo.routeName);
            },
            child: Text("跳转page_Textfield"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(HeroApp.routeName);
            },
            child: Text("跳转page_HeroApp"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(CustomSocket.routeName);
            },
            child: Text("跳转page_Socket"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(CustomSharePreferences.routeName);
            },
            child: Text("跳转CustomSharePreferences"),
          ),
        ],
      ),
    );
  }
}

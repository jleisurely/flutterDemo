import 'package:flutter/material.dart';

import 'home.dart';

class WYNavigation extends StatelessWidget {
  static final String routeName = "/navigation";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: RaisedButton(onPressed: () {
          Navigator.of(context).pushNamed("/home");
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
            return WYHomePage();
          }));
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
            Navigator.of(context).popAndPushNamed("home");
          }
        }));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class WYHomePage extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _WYHomePageState createState() => _WYHomePageState();
}

class _WYHomePageState extends State<WYHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: Container(
          child: Column(
            children: [
              Text(
                "测试Test",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: "",
                  fontStyle: FontStyle.normal,
                  color: Colors.red,
                  backgroundColor: Colors.blue,
                  decorationColor: Colors.green,
                  shadows: [
                    Shadow(
                        color: Colors.red,
                        offset: Offset(10, 10),
                        blurRadius: 10)
                  ],
                  decoration: TextDecoration.overline,
                  debugLabel: "Debug",
                  letterSpacing: 10,
                  wordSpacing: 10,
                ),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "textSpan",
                        style: TextStyle(
                            fontSize: 20, fontStyle: FontStyle.italic)),
                    TextSpan(children: [
                      TextSpan(children: [
                        TextSpan(
                            style: TextStyle(
                          fontStyle: FontStyle.normal,
                        ))
                      ])
                    ])
                  ]),
                ),
              ),
              Text.rich(TextSpan(children: [
                TextSpan(children: [
                  TextSpan(
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 20))
                ])
              ])),
              OutlineButton(
                onPressed: () {},
                textColor: Colors.red,
                disabledTextColor: Colors.blue,
              ),
              MaterialButton(
                onPressed: () {},
              ),
              BackButton(),
            ],
          ),
        ));
  }

  shapeAnimation() {}
}

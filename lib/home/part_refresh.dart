import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestRoute extends StatefulWidget {
  @override
  _TestRouteState createState() => _TestRouteState();
}

class _TestRouteState extends State<TestRoute> {
  int count = 0;

  GlobalKey<TextWidgetState> textKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('我的'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextWidget(textKey), //需要更新的Text
              new FlatButton(
                onPressed: () {
                  count++; // 这里我们只给他值变动，状态刷新交给下面的Key事件
                  textKey.currentState.onPressed(count);
                },
                child: new Text('按钮 $count'),
              ),
            ]));
  }
}

// 封装的文本组件Widget
class TextWidget extends StatefulWidget {
  final Key key;

  // 接收一个Key
  TextWidget(this.key);

  @override
  State<StatefulWidget> createState() => TextWidgetState();
}

class TextWidgetState extends State<TextWidget> {
  String _text = "0";

  @override
  Widget build(BuildContext context) {
    return new Text(_text);
  }

  void onPressed(int count) {
    setState(() => _text = count.toString());
  }
}

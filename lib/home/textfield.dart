import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WYTextFieldDemo extends StatefulWidget {
  static final String routeName = "/textfield";
  @override
  _WYTextFieldDemoState createState() => _WYTextFieldDemoState();
}

class _WYTextFieldDemoState extends State<WYTextFieldDemo> {
  var textField = TextField();
  var focusNode = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        print('得到焦点');
      } else {
        print('失去焦点');
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((mag) {
      print("  页面渲染完毕");
      // FocusScope.of(context).requestFocus(focusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "textField",
        ),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          // FocusScope.of(context).requestFocus(focusNode);
          //隐藏键盘
          // SystemChannels.textInput.invokeMethod('TextInput.hide');
          focusNode.unfocus();
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              focusNode: focusNode,
              autofocus: true,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  // labelText: "username",
                  hintText: "请输入用户名",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white),
              onChanged: (value) {
                print("onChanged:$value");
              },
              onSubmitted: (value) {
                print("onSubmitted:$value");
              },
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    super.dispose();
  }
}

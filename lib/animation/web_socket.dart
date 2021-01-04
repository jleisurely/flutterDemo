import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

class CustomSocket extends StatefulWidget {
  static final String routeName = "/websocket";
  final channel =
      IOWebSocketChannel.connect('wss://l10n-pro.huobiasia.vip/-/s/pro/ws');
  @override
  _CustomSocketState createState() => _CustomSocketState();
}

class _CustomSocketState extends State<CustomSocket> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.channel.stream,
      builder: (context, snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: Text('appbarTitle'),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: Center(
                child: Text(
              snapshot.hasData ? '${snapshot.data}' : '',
              style: Theme.of(context).textTheme.headline4,
            )),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _sendMessage,
            tooltip: 'Send message',
            child: Icon(Icons.send),
          ), // This trailing ,
        );
      },
    );
  }

  void _sendMessage() {
    widget.channel.sink.add({
      {"sub": "market.btcusdt.kline.15min"}
    });
  }

  @override
  void initState() {
    super.initState();
  }
}

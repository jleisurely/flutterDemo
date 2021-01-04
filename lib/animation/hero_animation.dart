import 'package:flutter/material.dart';

class HeroApp extends StatelessWidget {
  static final String routeName = "/hero";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
        onTap: () {
          Navigator.of(context).push(_createRoute());
        },
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    // pageBuilder: (context, animation, secondaryAnimation) => DetailScreen(),
    pageBuilder: (ctx, anim1, anim2) {
      return FadeTransition(opacity: anim1, child: DetailScreen());
    },
    // transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //   var begin = Offset(0.0, 1.0);
    //   var end = Offset.zero;
    //   var curve = Curves.ease;
    //
    //   var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    //
    //   return SlideTransition(
    //     position: animation.drive(tween),
    //     child: child,
    //   );
    // },
  );
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Container(
          color: Colors.black,
          width: double.infinity,
          height: double.infinity,
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://picsum.photos/250?image=9',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeroAnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Material(
        child: Container(
      child: InkWell(
        child: Hero(
          tag: "avatar",
          child: ClipOval(
            child: Image.asset("images/lake.jpg",
              width: 50.0,
            ),
          ),
        ),
        onTap: () {
          // Open Route B
          Navigator.push(context, PageRouteBuilder(pageBuilder:
              (BuildContext context, Animation animation,
                  Animation secondaryAnimation) {
            return new FadeTransition(
              opacity: animation,
              child: Scaffold(
                appBar: AppBar(
                  title: Text("原图"),
                ),
                body: HeroAnimationRouteB(),
              ),
            );
          }));
        },
      ),
    )));
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Material(
        child: Container(
            child: Center(
                child: Hero(
                  tag: "avatar",
                  child: Image.asset("images/lake.jpg"),
    )))));
  }
}

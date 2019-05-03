import 'package:flutter/material.dart';
import 'package:sosyal_sehir/layout.dart';
import 'package:sosyal_sehir/components/newsCard.dart';
import 'package:sosyal_sehir/components/pageHeader.dart';
import 'package:flutter/animation.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    // animation = Tween(begin: -1.0, end: 0.0).animate(animationController)
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ))
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void getNextCard() {
    print("object");
    animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    return Layout(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [.1, .7],
              colors: [
                Color(0xFFFFFFFF),
                Color(0xFFE4E6EB),
              ],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: PageHeader(title: "Günün İçerikleri"),
              ),
              Expanded(
                flex: 7,
                child: Transform(
                  transform: Matrix4.translationValues(
                      animation.value * MediaQuery.of(context).size.width,
                      0.0,
                      0.0),
                  child: NewsCard(
                    getNextCard: getNextCard,
                    withButtons: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

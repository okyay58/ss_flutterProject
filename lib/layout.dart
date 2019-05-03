import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Layout extends StatelessWidget {
  final Widget child;
  Color activeColor;
  List<Color> tabColors = new List();
  
  int _selectedIndex = 0;
  Layout({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex:
            _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.meteor,
              size: 20,
              color: Color(0xFF363636),
            ),
            title: Text(
              'ANASAYFA',
              style: TextStyle(
                fontFamily: "Muli",
                fontWeight: FontWeight.w900,
                fontSize: 10,
                height: 2,
                letterSpacing: 1,
                color: Color(0xFF363636),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.heart,
              size: 20,
              color: Color(0xFF363636),
            ),
            title: Text(
              'FAVORİLER',
              style: TextStyle(
                fontFamily: "Muli",
                fontWeight: FontWeight.w900,
                fontSize: 10,
                height: 2,
                letterSpacing: 1,
                color: Color(0xFF363636),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.hands,
              size: 20,
              color: Color(0xFF363636),
            ),
            title: Text(
              'KATEGORİLER',
              style: TextStyle(
                fontFamily: "Muli",
                fontWeight: FontWeight.w900,
                fontSize: 10,
                height: 2,
                letterSpacing: 1,
                color: Color(0xFF363636),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.userAstronaut,
              size: 20,
              color: Color(0xFF363636),
            ),
            title: Text(
              'PROFİL',
              style: TextStyle(
                fontFamily: "Muli",
                fontWeight: FontWeight.w900,
                fontSize: 10,
                height: 2,
                letterSpacing: 1,
                color: Color(0xFF363636),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

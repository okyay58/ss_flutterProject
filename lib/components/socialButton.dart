import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  final String type;
  String buttonText = "";
  IconData buttonIcon;
  Color buttonColor;

  SocialButton({this.type});

  @override
  Widget build(BuildContext context) {
    switch (this.type) {
      case "facebook":
        this.buttonText = "facebook ile giriş yap";
        this.buttonIcon = FontAwesomeIcons.facebook;
        this.buttonColor = Color(0xFF425BB4);
        break;
      case "twitter":
        this.buttonText = "twitter ile giriş yap";
        this.buttonIcon = FontAwesomeIcons.twitter;
        this.buttonColor = Color(0xFF1DCAFF);
        break;
      case "google":
        this.buttonText = "google ile giriş yap";
        this.buttonIcon = FontAwesomeIcons.google;
        this.buttonColor = Color(0xFFDF4B37);
        break;
      default:
        this.buttonText = "default button";
        this.buttonIcon = FontAwesomeIcons.minus;
        this.buttonColor = Colors.white;
        break;
    }
    return Scaffold(
      // backgroundColor: Colors.black,
      body: DecoratedBox(
        child: Padding(
          padding: EdgeInsets.only(top: 5, bottom: 10, right: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                this.buttonIcon,
                color: Colors.white,
              ),
              Text(
                this.buttonText,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
          shape: BoxShape.rectangle,
          color: this.buttonColor,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageHeader extends StatelessWidget {
  final String title;

  PageHeader({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(
          left: 15,
          top: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              this.title,
              style: TextStyle(
                fontFamily: "Muli",
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.ellipsisV),
              onPressed: () {
                print("Pressed");
              },
            )
          ],
        ),
      ),
    );
  }
}

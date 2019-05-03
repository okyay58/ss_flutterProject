import 'package:flutter/material.dart';
import 'package:sosyal_sehir/pages/home.dart';
import 'package:sosyal_sehir/pages/login.dart';
// import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp()); 
  // debugPaintSizeEnabled = true;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      routes: {
        // '/': (BuildContext context) => Login(),
        // '/home': (BuildContext context) => Home(),
        '/': (BuildContext context) => Home(),
      },
    );
  }
}

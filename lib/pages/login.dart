import 'package:flutter/material.dart';
import 'package:sosyal_sehir/layout.dart';
import 'package:sosyal_sehir/components/socialButton.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: [
            Colors.white,
            Color(0xFFE4E6EB),
          ],
          center: Alignment(0.0, 0.0),
          radius: 0.6,
          stops: [0.1, 1.0],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/logo.png'),
            ),
            Expanded(
              child: Center(
                child: Container(
                  width: 300,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Kullanıcı Adı',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Şifre',
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 300,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFFBA00),
                                Color(0xFFFF8900),
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                15,
                              ),
                            ),
                          ),
                          child: FlatButton(
                            child: Text(
                              'Giriş Yap',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/home'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 45,
                    color: Color(0xFF000000),
                    child: SocialButton(type: "facebook"),
                  ),
                  Container(
                    width: 300,
                    height: 45,
                    color: Color(0xFF000000),
                    child: SocialButton(type: "twitter"),
                  ), 
                  Container(
                    width: 300,
                    height: 45,
                    color: Color(0xFFE4E6EB),
                    child: SocialButton(type: "google"),
                  ), 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

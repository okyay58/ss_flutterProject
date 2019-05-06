import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Layout extends StatefulWidget {
  final Widget child;
  final int selectedPage;

  Layout({this.child, this.selectedPage});

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    animation = getAnimationValue(0, 0);
    // animation = Tween(begin: -1.0, end: 0.0).animate(animationController)
    // animation = Tween(begin: 1.0, end: 0.5).animate(CurvedAnimation(
    //   parent: animationController,
    //   curve: Curves.fastOutSlowIn,
    // ))
    //   ..addListener(() {
    //     setState(() {});
    //   });
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Animation<dynamic> getAnimationValue(int begin, int end) {
    return Tween(begin: begin.toDouble(), end: widget.selectedPage.toDouble())
        .animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ))
          ..addListener(() {
            setState(() {});
          });
  }

  Color activeColor;
  List<Color> tabColors = new List();

  int selectedIndex = 0;

  void onTapNavigationButton(int pageIndex) {
    setState(() {
      animation = getAnimationValue(selectedIndex, pageIndex);
      // selectedIndex = pageIndex;
      print(pageIndex);
      // animationController.forward();
      animationController.reverse();
      animation.addListener(() {
        if (animation.status == AnimationStatus.dismissed)
          animationController.forward();

        print(animation.status);
      });
      selectedIndex = pageIndex;
      switch (pageIndex) {
        case 0:
          Navigator.pushNamed(context, "/");
          break;
        case 1:
          Navigator.pushNamed(context, "/home");
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: widget.child,
      ),
      bottomNavigationBar: this.widget.selectedPage != 0
          ? Container(
              height: 60.0,
              child: Stack(
                children: <Widget>[
                  BottomNavigationBar(
                    fixedColor: Colors.red,
                    onTap: (pageIndex) => onTapNavigationButton(pageIndex),
                    type: BottomNavigationBarType.fixed,
                    currentIndex: widget.selectedPage,
                    items: [
                      BottomNavigationBarItem(
                        icon: Container(
                          child: Icon(
                            FontAwesomeIcons.meteor,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          'ANASAYFA',
                          style: TextStyle(
                            fontFamily: "Muli",
                            fontWeight: FontWeight.w900,
                            fontSize: 10,
                            height: 2,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          FontAwesomeIcons.solidHeart,
                          size: 20,
                        ),
                        title: Text(
                          'FAVORİLER',
                          style: TextStyle(
                            fontFamily: "Muli",
                            fontWeight: FontWeight.w900,
                            fontSize: 10,
                            height: 2,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          FontAwesomeIcons.hands,
                          size: 20,
                        ),
                        title: Text(
                          'KATEGORİLER',
                          style: TextStyle(
                            fontFamily: "Muli",
                            fontWeight: FontWeight.w900,
                            fontSize: 10,
                            height: 2,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(
                          FontAwesomeIcons.userAstronaut,
                          size: 20,
                        ),
                        title: Text(
                          'PROFİL',
                          style: TextStyle(
                            fontFamily: "Muli",
                            fontWeight: FontWeight.w900,
                            fontSize: 10,
                            height: 2,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width:
                            // (MediaQuery.of(context).size.width / 4) * selectedIndex,
                            (animation.value *
                                (MediaQuery.of(context).size.width / 4)),
                      ),
                      Container(
                        height: 2.0,
                        width: MediaQuery.of(context).size.width / 4,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            )
          : null,
    );
  }
}

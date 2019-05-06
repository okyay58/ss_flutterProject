import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircleButton extends StatefulWidget {
  final List<Color> color;
  final IconData icon;
  final double size;
  final double width;
  final double height;
  final Function onTap;

  const CircleButton(
      {Key key,
      this.color,
      this.icon,
      this.size = 1.0, // boş geçilirse default atıyor mu acaba???
      this.width,
      this.height,
      this.onTap})
      : super(key: key);

  @override
  _CircleButtonState createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        // color: Colors.white,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            new BoxShadow(
                color: Color.fromRGBO(65, 11, 24, 0.1),
                blurRadius: 13.0,
                offset: new Offset(0, 7))
          ],
        ),
        width: widget.width,
        height: widget.height,
        child: Center(
          child: ShaderMask(
            child: Icon(
              widget.icon,
              size: widget.size,
            ),
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: widget.color,
                stops: [
                  0.0,
                  0.5,
                ],
                tileMode: TileMode.mirror,
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
          ),
        ),
      ),
    );
  }
}

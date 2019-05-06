import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sosyal_sehir/components/circleButton.dart';

class NewsCard extends StatefulWidget {
  final bool withButtons;
  final Function getNextCard;

  const NewsCard({Key key, this.withButtons, this.getNextCard})
      : super(key: key);

  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  void _onTap(param) {
    // widget.getNextCard();
    // print("aha "+ param);
    // print(param);
    switch (param) {
      case 0: // comment

        break;
      case 1: // unlike
        break;
      case 2: // like
        break;
      case 3: // read more

        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            offset: Offset(0, 0),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/ss.png"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "M. Başakşehir Maçının Biletleri Satışta",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: "Muli",
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  "Demir Grup Sivasspor´umuz ile Medipol Başakşehir arasında oynanacak mücadelenin biletleri satışa sunuldu.\n\nSpor Toto Süper Lig Lefter Küçükandonyadis Sezonu 31. hafta maçında 03 Mayıs Cuma günü saat 20.30'da Yeni 4 Eylül Stadyumu'nda Demir Grup Sivasspor'umuz ile Medipol Başakşehir arasında oynanacak karşılaşmanın biletleri satışa çıktı.\n\nBiletlerin satışı; www.passo.com.tr adresinden, akıllı telefonlarda Passo Mobil APP uygulaması ve Yeni 4 Eylül Stadyumu Güney Kale Arkası Tribünü (8 Nolu Giriş) önündeki Passolig kart gişelerinde yapılacak.\n\nMaç biletlerini Passolig kartlarına yüklemek isteyen taraftarlarımızın gişelerde yoğunluk yaşanmaması için www.passo.com.tr adresinden veya...",
                  maxLines: 14,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: "Muli",
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF657085),
                  ),
                ),
                // SingleChildScrollView(
                //   child: ConstrainedBox(
                //     constraints: BoxConstraints(
                //       minHeight: 240, //viewportConstraints.maxHeight,
                //     ),
                //     child: IntrinsicHeight(
                //       child: Column(
                //         children: <Widget>[
                //           Container(
                //             // A fixed-height child.
                //             color: Colors.yellow,
                //             height: 120.0,
                //           ),
                //           Expanded(
                //             // A flexible child that will grow to fit the viewport but
                //             // still be at least as big as necessary to fit its contents.
                //             child: Container(
                //               color: Colors.blue,
                //               height: 120.0,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CircleButton(
                  onTap: () {
                    this._onTap(0);
                  },
                  width: 50,
                  height: 50,
                  color: [
                    Color(0xFF35B6C1),
                    Color(0xFF69E7F1),
                  ],
                  icon: FontAwesomeIcons.solidCommentDots,
                  size: 18.0,
                ),
                CircleButton(
                  onTap: () {
                    this._onTap(1);
                  },
                  width: 70,
                  height: 70,
                  color: [
                    Color(0xFF1A1A1A),
                    Color(0xFF000000),
                  ],
                  icon: FontAwesomeIcons.times,
                  size: 30.0,
                ),
                CircleButton(
                  onTap: () {
                    this._onTap(2);
                  },
                  width: 70,
                  height: 70,
                  color: [
                    Color(0xFFDA0020),
                    Color(0xFFBB001B),
                  ],
                  icon: FontAwesomeIcons.solidHeart,
                  size: 30.0,
                ),
                CircleButton(
                  onTap: () {
                    this._onTap(3);
                  },
                  width: 50,
                  height: 50,
                  color: [
                    Color(0xFFFFBA00),
                    Color(0xFFFF8900),
                  ],
                  icon: FontAwesomeIcons.stream,
                  size: 18.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

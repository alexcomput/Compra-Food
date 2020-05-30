import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/constants.dart';
import 'package:food/screens/details/components/orderm_button.dart';
import 'package:food/screens/details/components/title_price_ratting.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: <Widget>[
            shopeName(name: "Mercado do zezim"),
            TitlePriceRating(
              name: "Chelse Hamburgr",
              onRatingChanged: (value) {},
              rating: 4,
              price: 20,
              numOfReviews: 24,
            ),
            Text(
              "Produto feito na hora, companha batata frita e muitos mais, faça "
              "o seu pedido, o produot que descrve na imagem não é o mesmo produto"
              "que iremos entregar. É apenas uma demotração. Façao  seu pedido",
              style: TextStyle(
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          SizedBox(
            height: size.height * 0.1,
          ),
            OrderButton(size: size, press: (){},)
          ],
        ),
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          (Icons.location_on),
          color: ksecondaryColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
        )
      ],
    );
  }
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeigth = 20;
    path.lineTo(0, size.height - ignoreHeigth);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeigth);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            img_localisation: "images/cats/tshirt.png",
            img_caption: "shirt",
          ),

          Category(
            img_localisation: "images/cats/accessories.png",
            img_caption: "accesoires",
          ),

          Category(
            img_localisation: "images/cats/dress.png",
            img_caption: "dress",
          ),

          Category(
            img_localisation: "images/cats/formal.png",
            img_caption: "formal",
          ),

          Category(
            img_localisation: "images/cats/informal.png",
            img_caption: "informal",
          ),

          Category(
            img_localisation: "images/cats/jeans.png",
            img_caption: "jeans",
          ),

          Category(
            img_localisation: "images/cats/shoe.png",
            img_caption: "shoe",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String img_localisation;
  final String img_caption;
  Category({this.img_localisation, this.img_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
        title: Image.asset(img_localisation,
        width: 100.0,
        height: 80.0,),
        subtitle: Container(alignment: Alignment.topCenter,
            child: Text(img_caption)
        ),
      ),
    ),
      ),
      );
  }
}


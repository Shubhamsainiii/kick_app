import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'assets/images/cats/tshirt.png',
            image_caption: 'Shirt',
          ),

          Category(
            image_location: 'assets/images/cats/dress.png',
            image_caption: 'Tops',
          ),

          Category(
            image_location: 'assets/images/cats/Jeans.png',
            image_caption: 'Jeans',
          ),

          Category(
            image_location: 'assets/images/cats/formal.png',
            image_caption: 'Formal',
          ),

          Category(
            image_location: 'assets/images/cats/informal.png',
            image_caption: 'informal',
          ),

          Category(
            image_location: 'assets/images/cats/shoe.png',
            image_caption: 'Shoes',
          ),













        ],
    ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    required this.image_location,
    required this.image_caption

});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap:(){},
    child: Container(
      width: 100.0,
      height: 100.0,
      child: Column(children: [
        Container(
            width: 50.0,
            height: 50.0,
            child: Image.asset(image_location)),
        SizedBox(
          height: 8,
        ),
        Text(image_caption)
      ],),
    ),

    ),);
  }
}

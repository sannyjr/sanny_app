import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:[
         Category(
           image_location: 'image1/image/cat1/d2.png',
           image_caption: 'Equipment',
         ),

         Category(
           image_location: 'image1/image/cats1/protein.jpg',
           image_caption: 'Protein',
         ),
           
         Category(
           image_location: ' image1/image/cats1/shirt1.png',
           image_caption: 'Shirt',
         ),
         Category(
           image_location: 'image1/image/cats1/shoes.jpg',
           image_caption: 'Shoes',
         ),

         Category(
           image_location: 'image1/image/cats1/short.jpg',
           image_caption: 'Short',
         ),

         Category(
           image_location: 'image1/image/cats1/sock.jpg',
           image_caption: 'Socks',
         ), 
        ]
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(onTap: (){},
      child: Container(
          width: 130.0,
          child: ListTile(
          title: Image.asset(image_location,
            height: 80.0,
            width: 100.0,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child:  Text(image_caption, style: TextStyle(fontSize: 15.0 ),),
          ),
        ),
      ),
      ),
    );
  }
}
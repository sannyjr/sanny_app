import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//my own import

import 'package:sanny_app/componets/horizontal_listview.dart';
import 'package:sanny_app/componets/products.dart';
import 'pages/cart.dart';

void main(){
  runApp(HomePage());
}

class HomePage extends StatefulWidget{
@override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
  Widget image_carousel = Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('image1/image/fitness/back.jpg'),
        AssetImage('image1/image/fitness/fasting-workout.jpg'),
        AssetImage('image1/image/fitness/lunch-break-workout.jpg'),
        AssetImage('image1/image/fitness/Morning-Workout.jpg'),
        AssetImage('image1/image/fitness/Stack-Lunges-outside.jpg'),
        AssetImage('image1/image/fitness/unnamed.jpg'),
        AssetImage('image1/image/fitness/workout.jpg'),
        AssetImage('image1/image/fitness/andrei.jpeg'),     
      ],
     autoplay: true,
     animationCurve: Curves.fastOutSlowIn,
     autoplayDuration: Duration(milliseconds: 2000),
      dotSize: 4.0,
      indicatorBgPadding: 6.0,
      dotBgColor: Colors.transparent,
    ),
  );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.purple,
          title: Text('Sunny Shop'),
          actions: [
            IconButton(
              icon: Icon(Icons.search,color: Colors.white,),              
              onPressed: (){}
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart,color: Colors.white,),              
              onPressed: (){
               Navigator.push(context, 
               MaterialPageRoute(builder: (context)=> Cart()));
              }
            ),
          ]
        ),
        //appBar
        drawer: Drawer(
          child: ListView(
            children: [
              //header
              UserAccountsDrawerHeader(
                accountName: Text('SannJR'),
                accountEmail: Text('sannyjr17@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),// CircleAvatar
                ), // GestureDetector, currentAccountPicture
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
              ),// UserAccountsDrawerHeader
      //      body

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home, color: Colors.purple),
                ),
              ),
              
               InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person, color: Colors.purple),
                ),
              ),
              
               InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_basket, color: Colors.purple),
                ),
              ),
              
               InkWell(
                onTap: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=> Cart()));
                },
                child: ListTile(
                  title: Text('Shopping cart'),
                  leading: Icon(Icons.shopping_cart, color: Colors.purple),
                ),
              ),
              
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Favorites'),
                  leading: Icon(Icons.favorite, color: Colors.red),
                ),
              ),
              
              Divider(),
              
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings, color: Colors.green),
                ),
              ),
              
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.blue),
                ),
              ),
            ]
          ),
        ),
        body : ListView(
          children: [
            //image carousel begin here
            image_carousel,
            //Padding
            Padding(padding: EdgeInsets.all(8.0),
            child: Text('Categories'),
            ),
             // Horizontal List view being here
             HorizontalList(), 

             Padding(padding: EdgeInsets.all(6.0),
            child: Text('Recent Product'),
            ),

            //gridview
            Container(
              height: 320.0,
              child: Products(),
            )
          ],
        ),
      ),
    );
  }
}
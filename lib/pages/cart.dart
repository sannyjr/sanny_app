import 'package:flutter/material.dart';

import 'package:sanny_app/componets/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.purple,
          title: Text('Shopping Cart'),
          actions: [
            IconButton(
              icon: Icon(Icons.search,color: Colors.white,),              
              onPressed: (){}
            ),
          ]
        ),

        body: CartProduct(),

        bottomNavigationBar: Container(
          color: Colors.white,
          child: Row(
            children: [
            Expanded(
              child: ListTile(
                title: Text("Total"),
                subtitle: Text("\$170"),
            )
            ),
            Expanded(
              child: MaterialButton(onPressed: (){},
              child: Text("Check Out",style: TextStyle(color: Colors.white),),
              color: Colors.red
              ), 
            )
          ],
          )
        ),
    );
  }
}
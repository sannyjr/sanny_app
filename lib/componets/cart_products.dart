import 'package:flutter/material.dart';



class CartProduct extends StatefulWidget {
  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  var Product_on_the_cart = [
     {
      "name": "Shirt",
      "picture":"image1/image/product/s1.jpg" ,
      "price": 15, 
      "Size": "M",
      "Color": "Black",
      "Quantity": 1
    },
     {
      "name": "Short",
      "picture":"image1/image/product/shark.jpg" ,
      "price": 20, 
      "Size": "M",
      "Color": "Cyan",
      "Quantity": 1
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Product_on_the_cart.length,
      itemBuilder: (context, index){
        return Single_cart_produst(
          cart_name: Product_on_the_cart[index]["name"],
          cart_color: Product_on_the_cart[index]["Color"] ,
          cart_picture: Product_on_the_cart[index]["picture"],
          cart_price: Product_on_the_cart[index]["price"],
          cart_qty: Product_on_the_cart[index]["Quantity"],
          cart_size: Product_on_the_cart[index]["Size"],
        );
      }
    );
  }
}

class Single_cart_produst extends StatelessWidget {
  final cart_name;
  final cart_picture;
  final cart_price;
  final cart_size;
  final cart_color;
  final cart_qty;

  Single_cart_produst({
    this.cart_color,
    this.cart_name,
    this.cart_picture,
    this.cart_price,
    this.cart_qty,
    this.cart_size,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//  ==== LEADING SECTION =====
       leading: Image.asset(cart_picture,
       width: 80.0,
       height: 80.0,
       ),
        title: Text(cart_name),
        subtitle: Column(
          children: [
            Row(
              children: [
//         this section is for size of the product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                  child: Text("$cart_size",
                  style: TextStyle(color: Colors.red),),
                ),
//      ====    this section of for the product color ====
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Color:"),
                ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                  child: Text("$cart_color",
                  style: TextStyle(color: Colors.red),),
                ),
              ],
            ),
// === THIS SECTION IS FOR THE PRODUCT PRICE ===
              Container(
                alignment: Alignment.topLeft,
                child: Text("\$$cart_price",
                  style: TextStyle(fontSize: 17.0, 
                  fontWeight: FontWeight.bold,
                  color: Colors.red
                  ),
                  
                ),
              )
          ],
        ),
        trailing: Column(
          children: [
            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: (){}),
            Text("$cart_qty"),
            IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ]
        ),
      ),
    );
  }
}
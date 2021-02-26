import 'package:flutter/material.dart';
import 'package:sanny_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Shirt",
      "picture":"image1/image/product/s1.jpg" ,
      "old_price": 20 ,
      "price": 15, 
    },
    {
      "name": "Short",
      "picture":"image1/image/product/shark.jpg" ,
      "old_price": 55 ,
      "price": 35, 
    },
    {
      "name": "Sock",
      "picture":"image1/image/product/gym_sock.jpg" ,
      "old_price": 15 ,
      "price": 10, 
    },    
    {
      "name": "Shoes",
      "picture":"image1/image/product/shoes1.jpg" ,
      "old_price": 120 ,
      "price": 100, 
    },
    {
      "name": "Whey Protein",
      "picture":"image1/image/product/whey.jpg" ,
      "old_price": 100 ,
      "price": 80, 
    },
    {
      "name": "Gym Machine",
      "picture":"image1/image/product/gym.jpg" ,
      "old_price": 2000 ,
      "price": 1890, 
    },        
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder: (BuildContext context, int index){
         return Single_prod(
           prod_name: product_list[index]['name'],
           prod_picture: product_list[index]['picture'],
           prod_old_price: product_list[index]['old_price'],
           prod_price: product_list[index]['price'],
         );
       }
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_old_price,
    this.prod_picture,
    this.prod_price
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(
              // passing product to product details
              MaterialPageRoute(builder: (context) => ProductDetails(
                product_details_name: prod_name,
                product_details_new_price: prod_price,
                product_details_old_price: prod_old_price,
                product_details_picture: prod_picture,
              ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(child: 
                    Text("$prod_name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)
                    ),
                    Text("\$$prod_price",style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              child: Image.asset(prod_picture,
              fit: BoxFit.cover
              ))
          ),
        ),
      ),
    );
  }
}
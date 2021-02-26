import "package:flutter/material.dart";
import 'package:sanny_app/main.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_new_price;
  final product_details_old_price;
  final product_details_picture;

  ProductDetails({
    this.product_details_name,
    this.product_details_new_price,
    this.product_details_old_price,
    this.product_details_picture
  });
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.purple,
          title: InkWell(
            onTap: (){Navigator.push(context,
            MaterialPageRoute(builder: (context)=> HomePage())
             );},
            child: Text('Sunny Shop')),
          actions: [
            IconButton(
              icon: Icon(Icons.search,color: Colors.white,),              
              onPressed: (){}
            ),
          ]
        ),

        body: ListView(
          children:[
            Container(
              height:200.0,
              child: GridTile(
                child: Container(
                  color: Colors.white54,
                  child: Image.asset(widget.product_details_picture)
                ),
                footer: Container(
                  color: Colors.white54,
                  child: ListTile(
                    leading: Text(widget.product_details_name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: Row(
                      children: [
                        Expanded(
                         child: Text("\$${widget.product_details_old_price}",
                         style: TextStyle(color: Colors.grey,
                         decoration: TextDecoration.lineThrough),
                         ),
                        ),
                        Expanded(
                         child: Text("\$${widget.product_details_new_price}",
                         style: TextStyle(fontWeight: FontWeight.bold,
                         color: Colors.red),
                         ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          //  ======== the first buttons ========

            Row(
              children:[
                //===== the size button ====
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text('Size'),
                        content: Text('Choose the size'),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: Text("Close")
                          ),
                        ],
                      );
                    }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Size")
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),                      
                    ],
                  ),
                 ) 
                 ),
                   //===== the color button ====
                Expanded(
                  child: MaterialButton(
                   onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text('Colors'),
                        content: Text('Choose a color'),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: Text("Close")
                          ),
                        ],
                      );
                    }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Color")
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),                      
                    ],
                  ),
                 ) 
                 ),
                   //===== the quantity button ====
                Expanded(
                  child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text('Quantity'),
                        content: Text('Choose the quantity'),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: Text("Close")
                          ),
                        ],
                      );
                    }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Qty")
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),                      
                    ],
                  ),
                 ) 
                 )
              ]
            ),
            // ===the second button====

             Row(
              children:[
                //===== the size button ====
                Expanded(
                  child: MaterialButton(onPressed: (){},
                  color: Colors.purple,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy now')
                 ) 
                 ),
                 IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.purple,), onPressed: (){}),
                 IconButton(icon: Icon(Icons.favorite_border,color: Colors.purple,), onPressed: (){})
              ]
            ),
            Divider(),
            ListTile(
              title: Text("Product Details"),
              subtitle: Text("This one’s for the times you just want to get your head down and train hard, in a vest that keeps up. The Logo Strip Stringer is an essential you can always rely on for your workout, with a stretchy blend of cotton and elastane and an unrestrictive “true lifter’s” silhouette."),
            ),
            Divider(),
            Row(
              children:[
                Padding(padding: EdgeInsets.fromLTRB(12.0, 5, 5, 5),
                child: Text("Product Name",style: TextStyle(color: Colors.grey),),
                ),
                Padding(padding: EdgeInsets.all(10.0),
                child: Text(widget.product_details_name),
                )
              ]
            ),
             Row(
              children:[
                Padding(padding: EdgeInsets.fromLTRB(12.0, 5, 5, 5),
                child: Text("Product brand",style: TextStyle(color: Colors.grey),),
                ),
//          TOO CREATE THE PRODUCT BRAND
                Padding(padding: EdgeInsets.all(10.0),
                child: Text("Brand X"),
                )
              ]
            ),
             Row(
              children:[
                Padding(padding: EdgeInsets.fromLTRB(12.0, 5, 5, 5),
                child: Text("Product condition",style: TextStyle(color: Colors.grey),),
                ),
//          ADD PRODUCT CONDITION
                Padding(padding: EdgeInsets.all(10.0),
                child: Text("NEW"),
                )
              ]
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Similar product"),
            ),
//          SIMILAR PRODUCT SECTION
          Container(
            height: 360.0,
            child: SimilarProduct(),
          )
          ]
        ),
      
    );
  }
}

class SimilarProduct extends StatefulWidget {
  @override
  _SimilarProductState createState() => _SimilarProductState();
}

class _SimilarProductState extends State<SimilarProduct> {
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
      "name": "Whey",
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
         return Similar_Single_prod (
           prod_name: product_list[index]['name'],
           prod_picture: product_list[index]['picture'],
           prod_old_price: product_list[index]['old_price'],
           prod_price: product_list[index]['price'],
         );
       }
    );
  }
  }

  class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

 Similar_Single_prod ({
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
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name":"Blazer",
      "picture":"assets/images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,

    },
    {
      "name":"Blazer",
      "picture":"assets/images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 85,
    }

  ];
  @override
  Widget build(BuildContext context) {
  return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Single_prod(
          product_name: product_list[index]['name'] ,
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],

        );
      }

  );
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.product_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
});

  // const Single_prod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(onTap: (){},
          child: GridTile(
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(product_name,style: TextStyle(fontWeight: FontWeight.bold),),
              ),),
              child: Image.asset(prod_picture,
                fit: BoxFit.cover,



          ),
          ),) ,
        ),
      ),
    );
  }
}



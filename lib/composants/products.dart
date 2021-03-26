import 'package:flutter/material.dart';
import 'package:deftechno221/pages/product.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var produit_list = [
    {
      "name":"costume",
      "picture":"images/products/blazer1.jpeg",
      "old_price":15000,
      "price":12000
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: produit_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
        return Single_prod(
          prod_name: produit_list[index]["name"],
          prod_picture: produit_list[index]["picture"],
          prod_old_price: produit_list[index]["old_price"],
          prod_price: produit_list[index]["price"],
        );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
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
              new MaterialPageRoute(builder: (context)=> new ProductDetails())
            ),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text("$prod_price F",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("$prod_old_price F",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                    decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(prod_picture,
              fit: BoxFit.cover,),
            ),
          ),
        ),
      ),
    );
  }
}


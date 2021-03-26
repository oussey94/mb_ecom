import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:deftechno221/composants/horizontal_ListView.dart';
import 'package:deftechno221/composants/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    Widget img_carousel= new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/IMG_1266.JPG"),
          AssetImage("images/m1.jpeg"),
          AssetImage("images/m2.jpg"),
          AssetImage("images/w1.jpeg"),
          AssetImage("images/w3.jpeg"),
          AssetImage("images/w4.jpeg"),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("SenShop"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('mbodji oussey'),
              accountEmail: Text('mbodji@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.green
              ),
            ),
            new InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Page d'acceuille"),
                leading: Icon(Icons.home),
              ),
            ),
            new InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Mon compte"),
                leading: Icon(Icons.person),
              ),
            ),
            new InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Mes commandes"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            new InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Catégories"),
                leading: Icon(Icons.dashboard),
              ),
            ),
            new InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("favorits"),
                leading: Icon(Icons.favorite),
              ),
            ),
            new Divider(),
            new InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Paramétres"),
                leading: Icon(Icons.settings),
              ),
            ),
            new InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Aide"),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          img_carousel,

          //padding
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text("Categories"),
          ),

          //listView horizontal
          HorizontalList(),

          //padding
          new Padding(padding: const EdgeInsets.all(25.0),
          child: Text("Produits ressents"),),

          //grid View
          new Container(
            height: 400.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

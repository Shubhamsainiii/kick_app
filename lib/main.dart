// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'componets/horizontal_listview.dart';
import 'componets/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/images/w3.jpeg'),
        AssetImage('assets/images/m1.jpeg'),
        AssetImage('assets/images/c1.jpg'),
        AssetImage('assets/images/w4.jpeg'),
        AssetImage('assets/images/m2.jpg'),
      ],
      autoplay: false,
      // animationCurve: Curves.fastOutSlowIn ,
      // animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      dotColor: Colors.black,
      indicatorBgPadding: 2.0,
    ) ,
  );


    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.greenAccent,
        title: Center(
            child: Text(
              'KiCk',
              style: TextStyle(color: Colors.black, fontSize: 20),
            )),
        actions: <Widget>[
          new IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.black)),
          new IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart, color: Colors.black))
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(

                accountName: Text('Shubham Saini'),
                accountEmail: Text('shubhamsaini99@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.greenAccent),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.black54,
            ),
            ),

          //  body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categoris'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue),
              ),
            ),




          ],
        ),
      ),

      body: new ListView(
        children: [
          //image carousel begins here
          image_carousel,

          // padding Widget
          new Padding(padding: const EdgeInsets.all(12.0),
          child: new Text('Categories'),),

        //  horizontal list view begins here
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(20.0),
          child: new Text('Recent products'),),

        //  grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}

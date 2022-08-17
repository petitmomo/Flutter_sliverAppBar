//import 'package:flutter/cupertino.dart';
//import 'package:flutter/cupertino.dart';
//import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      title: "Cous Flutter",
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget produit(String menu, Color color, String image) {
    return Container(
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            menu,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          Image.asset(image, fit: BoxFit.cover, width: 150, height: 150)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          "SliverAppbar",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        actions: [
          const Icon(Icons.computer_sharp, color: Colors.black, size: 30),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Bienvenue chez momo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            centerTitle: true,
            expandedHeight: 200,
            backgroundColor: Colors.transparent,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/2.png", fit: BoxFit.cover),
            ),
            actions: [
              IconButton(
                onPressed: null,
                icon: Icon(Icons.local_cafe, color: Colors.black),
              ),
            ],
          ),
          SliverFixedExtentList(
            itemExtent: 150,
            delegate: SliverChildListDelegate([
              produit('Caramel', Colors.blue, ("images/4.png")),
              produit('Markal', Colors.green, ("images/10.png")),
              produit('Huile', Colors.yellow, ("images/11.png")),
              produit('Caramel', Colors.red, ("images/4.png")),
              produit('Markal', Colors.purple, ("images/10.png")),
              produit('Huile', Colors.black, ("images/11.png")),
            ]),
          ),
        ],
      ),
    );
  }
}

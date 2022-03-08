import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  var images = [
    "assets/images/cappuccino.png",
    "assets/images/espresso1.png"
  ];
  var titles = [
    "cappuccino",
    "espresso"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage:AssetImage(images[index]),
            ),
            title: Text(titles[index],style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w400),),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        );
      },),
    );
  }
}

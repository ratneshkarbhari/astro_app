import 'package:flutter/material.dart';
import '../templates/AppBarTemplate.dart';
import '../templates/DrawerTemplate.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './Service.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(),
      appBar: AppBarTemplate("Home"),
      body: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> carouselImgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(),
            items: carouselImgList
                .map((item) => Image.network(item.toString()))
                .toList(),
          ),
          Center(child: Text("Our Services", style: TextStyle(fontSize: 30.0))),
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Service("Personal HoroScope (Kundli)")));
            },
            title: Text("Personal HoroScope (Kundli)",style: TextStyle(color: Colors.white),),
            tileColor: Colors.red,
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Service("Kundli Reading")));
            },
            title: Text("Kundli Reading",style: TextStyle(color: Colors.white),),
            tileColor: Colors.blue,
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Service("Manglik Dosh")));
            },
            title: Text("Manglik Dosh",style: TextStyle(color: Colors.white),),
            tileColor: Colors.green,
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Service("Kalsarp Dosh")));
            },
            title: Text("Kalsarp Dosh",style: TextStyle(color: Colors.black),),
            tileColor: Colors.yellow,
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Service("Sadesati Period")));
            },
            title: Text("Sadesati Period",style: TextStyle(color: Colors.white),),
            tileColor: Colors.blue,
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Service("Gemstones")));
            },
            title: Text("Gemstones",style: TextStyle(color: Colors.white),),
            tileColor: Colors.deepOrange,
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Service("Sadesati Period")));
            },
            title: Text("Sadesati Period",style: TextStyle(color: Colors.black),),
            tileColor: Colors.lightGreen,
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Service("Graha Shanti")));
            },
            title: Text("Graha Shanti",style: TextStyle(color: Colors.white),),
            tileColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}

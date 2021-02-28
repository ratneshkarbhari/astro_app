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

  List colors = [Colors.red,Colors.green,Colors.blue,Colors.pink,Colors.purple,Colors.deepOrange,Colors.teal,Colors.amber,Colors.cyan,Colors.indigo];

  List services = ["Personal Horoscope (Kundli)","Kundli Matching","Manglik Dosh","Kalsarp Dosh","Saade Saati Period","Gemstones","Graha Shanti","Remedies (Health,Education,Love Marriage Success)","Puja Recommendation", "Mantra Recommendation"];  

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
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: GridView.count(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              children: List.generate(10, //this is the total number of cards
                  (index) {
                return Container(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Service(services[index])));
                    },
                    child: Card(
                      color: colors[index],
                      child: Center(child: Text(services[index],style: TextStyle(color: Colors.white,fontSize: 20.0),textAlign: TextAlign.center,)),
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}

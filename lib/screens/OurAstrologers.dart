import 'package:flutter/material.dart';
import '../templates/AppBarTemplate.dart';
import '../templates/DrawerTemplate.dart';


class OurAstrologers extends StatefulWidget {
  @override
  _OurAstrologersState createState() => _OurAstrologersState();
}

class _OurAstrologersState extends State<OurAstrologers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(),
      appBar: AppBarTemplate("Our Astrologers"),
      body: OurAstrologersPage(),
    );
  }
}

class OurAstrologersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          Image.asset("assets/images/about.jpg",width: 200.0,height: 200.0,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                Text("FirstName LastName",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, preti",style: TextStyle(fontSize: 16.0)),
              ],
            ),
          ),
          SizedBox(height: 16.0,),
          Image.asset("assets/images/about.jpg",width: 200.0,height: 200.0,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                Text("FirstName LastName",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, preti",style: TextStyle(fontSize: 16.0)),
              ],
            ),
          ),
          Image.asset("assets/images/about.jpg",width: 200.0,height: 200.0,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                Text("FirstName LastName",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, preti",style: TextStyle(fontSize: 16.0)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

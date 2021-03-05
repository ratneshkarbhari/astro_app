import 'package:flutter/material.dart';
import '../screens/DailyHoroScope.dart';
import '../screens/Home.dart';
import '../screens/AboutUs.dart';
import '../screens/ContactUs.dart';
import '../screens/AskAnyQuestion.dart';
import '../screens/OurServices.dart';
import '../screens/Login.dart';
import '../screens/OurAstrologers.dart';
import '../screens/HowItWorks.dart';


class DrawerTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ratnesh Karbhari"),
            accountEmail: Text("ratneshkarbhari23@gmail.com"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
            },
            title: Text("Login"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));
            },
            title: Text("Home"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>HowItWorks()));
            },
            title: Text("How It Works"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>OurAstrologers()));
            },
            title: Text("Our Astrologers"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>DailyHoroScope()));
            },
            title: Text("Today's Horoscope"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>AskAnyQuestion()));
            },
            title: Text("Ask any Question"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>OurServices()));
            },
            title: Text("Our Services"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>AboutUs()));
            },
            title: Text("About Us"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ContactUs()));
            },
            title: Text("Contact Us"),
          ),
        ],
      ),
    );
  }
}

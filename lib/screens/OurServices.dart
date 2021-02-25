import 'package:flutter/material.dart';
import '../templates/AppBarTemplate.dart';
import '../templates/DrawerTemplate.dart';

class OurServices extends StatefulWidget {
  @override
  _OurServicesState createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(),
      appBar: AppBarTemplate("Our Services"),
      body: OurServicesPage(),
    );
  }
}

class OurServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Our Services"),     
    );
  }
}
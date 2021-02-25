import 'package:flutter/material.dart';
import '../templates/AppBarTemplate.dart';
import '../templates/DrawerTemplate.dart';

class Service extends StatefulWidget {
  final name;
  Service(this.name);
  @override
  _ServiceState createState() => _ServiceState(this.name);
}

class _ServiceState extends State<Service> {
  final name;
  _ServiceState(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(),
      appBar: AppBarTemplate(this.name),
      body: ServicePage(this.name),
    );
  }
}

class ServicePage extends StatelessWidget {
  final name;
  ServicePage(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          Text(this.name, style: TextStyle(fontSize: 30.0)),
          SizedBox(
            height: 20.0,
          ),
          Text(
              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rho"),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                labelText: "Full Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                )),
          ),
          SizedBox(height: 10,),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                labelText: "Contact Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                )),
          ),
          SizedBox(height: 10,),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: "Location",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                )),
          ),
          SizedBox(height: 10,),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: "Your Query",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                )),
          ),
          SizedBox(height: 20,),
          MaterialButton(
            height: 50.0,
            onPressed: (){},
            color: Colors.blue,
            child: Text("Send",style: TextStyle(color: Colors.white,fontSize: 16.0)),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        ],
      ),
    ));
  }
}

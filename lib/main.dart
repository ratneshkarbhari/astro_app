import 'package:flutter/material.dart';
import './screens/Home.dart';
import './screens/Login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './utils/Constants.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Constants.prefs.getBool("loggedIn") == true ? Home() : Login(),
  ));
}

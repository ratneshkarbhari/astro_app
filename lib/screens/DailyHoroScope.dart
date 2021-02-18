import 'package:flutter/material.dart';
import '../templates/AppBarTemplate.dart';
import '../templates/DrawerTemplate.dart';

class DailyHoroScope extends StatefulWidget {
  @override
  _DailyHoroScopeState createState() => _DailyHoroScopeState();
}

class _DailyHoroScopeState extends State<DailyHoroScope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(),
      appBar: AppBarTemplate(),
      body: DailyHoroScopePage(),
    );
  }
}

class DailyHoroScopePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("DailyHoroScope"),     
    );
  }
}
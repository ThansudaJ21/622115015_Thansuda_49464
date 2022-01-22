import 'package:application/component/sidemenu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text("GREENBUS", style: TextStyle(fontFamily: 'BRITANIC')),
        centerTitle: true,
      ),
      drawer: SideMenu(),
    );
  }
}
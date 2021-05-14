import 'package:flutter/material.dart';
import 'package:flutter_app/column.example.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Accueil'),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.settings),
          Icon(Icons.more_vert),
        ],
        elevation: 15.0,
        centerTitle: true,
      ),
      body: Center(child: ColumnExample()),
    );
  }
}

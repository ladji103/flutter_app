import 'package:flutter/material.dart';
import 'package:flutter_app/column.example.dart';
import 'package:flutter_app/popup.page.dart';

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
      body: Center(child: PopupPage()
          // ColumnExample(stateColor: true,)
          ),
      floatingActionButton: FloatingActionButton(
        elevation: 8.0,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {});
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

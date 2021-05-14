import 'package:flutter/material.dart';

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
      body: Container(
          margin: EdgeInsets.all(10.0),
          color: Colors.white38,
          child: Center(
              child: Text(
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
            textAlign: TextAlign.center,
            textScaleFactor: 1.5,
            maxLines: 2,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontStyle: FontStyle.italic),
          ))),
    );
  }
}

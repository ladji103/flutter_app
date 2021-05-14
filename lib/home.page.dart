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
            child: Card(
              elevation: 15.5,
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Image.asset('assets/images/mercedes.jpg',
                    fit: BoxFit.fitHeight),
              ),
            ),
          )),
    );
  }
}

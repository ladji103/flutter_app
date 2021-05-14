import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
          style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
        SizedBox(
          height: 20.0,
        ),
        Card(
          elevation: 20.0,
          child: Container(
            width: MediaQuery.of(context).size.width / 1.5,
            height: 200.0,
            child: Image.asset(
              'assets/images/mercedes.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          color: Colors.orange,
          height: largeur / 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: largeur / 8,
                width:  largeur / 8,
                color: Colors.white38,
              ),
              Container(
                height: largeur / 8,
                width:  largeur / 8,
                color: Colors.red,
              ),
              Container(
                height: largeur / 8,
                width:  largeur / 8,
                color: Colors.green,
              ),
              Container(
                height: largeur / 8,
                width:  largeur / 8,
                color: Colors.pink,
              ),
              Container(
                height: largeur / 8,
                width:  largeur / 8,
                color: Colors.indigo,
              ),
              Container(
                height: largeur / 8,
                width:  largeur / 8,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                height: largeur / 8,
                width:  largeur / 8,
                color: Colors.black,
              ),
            ],
          ),
        )
      ],
    );
  }
}

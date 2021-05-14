import 'package:flutter/material.dart';

class ColumnExample extends StatefulWidget {
  bool stateColor;

  ColumnExample({Key key, this.stateColor}) : super(key: key);

  @override
  _ColumnExampleState createState() => _ColumnExampleState();
}

class _ColumnExampleState extends State<ColumnExample> {
  // bool stateColorText = widget.stateColor;

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return ListView(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, ${widget.stateColor} consectetur, adipisci velit...',
            style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                color: (widget.stateColor) ? Colors.red : Colors.black),
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
                  width: largeur / 8,
                  color: Colors.white38,
                ),
                Container(
                  height: largeur / 8,
                  width: largeur / 8,
                  color: Colors.red,
                ),
                Container(
                  height: largeur / 8,
                  width: largeur / 8,
                  color: Colors.green,
                ),
                Container(
                  height: largeur / 8,
                  width: largeur / 8,
                  color: Colors.pink,
                ),
                Container(
                  height: largeur / 8,
                  width: largeur / 8,
                  color: Colors.indigo,
                ),
                Container(
                  height: largeur / 8,
                  width: largeur / 8,
                  color: Colors.deepPurpleAccent,
                ),
                Container(
                  height: largeur / 8,
                  width: largeur / 8,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Text(
            'Les Icons',
            style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
            textAlign: TextAlign.left,
          ),
          Container(
            height: largeur / 5,
            margin: EdgeInsets.all(10.0),
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.thumb_up, color: Colors.white, size: largeur / 10),
                Icon(Icons.thumb_down, color: Colors.white, size: largeur / 10),
                Icon(Icons.palette,
                    color: (widget.stateColor) ? Colors.red : Colors.white,
                    size: largeur / 10),
                Icon(Icons.directions_bike,
                    color: (widget.stateColor) ? Colors.red : Colors.white,
                    size: largeur / 10),
              ],
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.delete,
                size: largeur / 10,
                color: Colors.red,
              ),
              onPressed: changeStateColor),
          TextButton(onPressed: changeStateColor, child: Text('Appuyer!')),
          ElevatedButton(
            onPressed: changeStateColor,
            child: Text('Appuyer !', style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(primary: Colors.green)
          )
        ],
      ),
    ]);
  }

  void changeStateColor() {
    setState(() {
      widget.stateColor = !widget.stateColor;
    });
  }
}

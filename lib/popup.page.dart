import 'package:flutter/material.dart';

class PopupPage extends StatefulWidget {
  @override
  _PopupPageState createState() => _PopupPageState();
}

class _PopupPageState extends State<PopupPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Show SnackBar'),
        onPressed: showSnackBar,
      ),
    );
  }

  void showSnackBar() {
    SnackBar snackBar = new SnackBar(
        content: Text("Congratilation! I'am a snackbar", textScaleFactor: 1.5),
        duration: Duration(seconds: 5));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

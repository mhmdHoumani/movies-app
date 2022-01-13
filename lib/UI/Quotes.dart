import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  int _index = 0;
  final _quotes = [
    "First Quote...",
    "Second Quote...",
    "Third Quote...",
    "Fourth Quote...",
    "Fifth Quote...",
    "Sixth Quote...",
    "Seventh Quote...",
    "Eighth Quote...",
    "Ninth Quote...",
    "Tenth Quote...",
    "Eleventh Quote...",
    "Twelfth Quote..."
  ];

  void _increment() {
    setState(() {
      _index++;
    });
  }
  void _decrement() {
    setState(() {
      _index--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Multiple Quotes"), backgroundColor: Colors.red),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 200,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 100.0),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                _quotes[_index % _quotes.length],
                style: TextStyle(
                  fontSize: 32,
                  fontStyle: FontStyle.italic,
                  fontFamily: "Cursive",
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            FlatButton.icon(
              textColor: Colors.lightGreenAccent,
              color: Colors.blue,
              onPressed: _increment,
              icon: Icon(Icons.arrow_forward),
              label: Text(
                "Next Quote",
                style: TextStyle(fontSize: 18, fontFamily: "Serif"),
              ),
            ),
            FlatButton.icon(
              textColor: Colors.lightGreenAccent,
              color: Colors.blue,
              onPressed: _decrement,
              icon: Icon(Icons.arrow_back),
              label: Text(
                "Previous Quote",
                style: TextStyle(fontSize: 18, fontFamily: "Serif"),
              ),
            ),
            //Divider(thickness: 1.2,),
            //Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}

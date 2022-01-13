import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biz Card"),
        backgroundColor: Colors.black54,
        toolbarHeight: 80
      ),

      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.fromLTRB(0,50,0,0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Biz card Co.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w900,
              backgroundColor: Colors.blueAccent
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
          Text("BuildAppWithPauloB"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text("@buildappwithme")
            ],
          ),
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        //color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        border: Border.all(
          color: Colors.blueAccent,
          width: 2
        ),
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/300/300"),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:first_project/Buttons/CustomButton.dart';
import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  void _alarmPressed() {
    debugPrint("Alarm is pressed!");
  }

  void _emailPressed() {
    debugPrint("Email is Pressed");
  }

  void _clickMeTapped() {
    debugPrint("Clicked...");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Title"),
        backgroundColor: Colors.deepPurple,
        toolbarHeight: 80,
        actions: <Widget>[
          IconButton(onPressed: _emailPressed, icon: Icon(Icons.email)),
          IconButton(onPressed: _alarmPressed, icon: Icon(Icons.access_alarms)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.add, size: 40.0,),
        onPressed: () => debugPrint("Add Clicked..."),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: "Email"),
          BottomNavigationBarItem(icon: Icon(Icons.add_ic_call), label: "Call")
        ],
        onTap: (int index) {
          switch(index) {
            case 0:
              debugPrint("Profile tapped with index: $index");
              break;
            case 1:
              debugPrint("Email tapped with index: $index");
              break;
            case 2:
              debugPrint("Call tapped with index: $index");
              break;
            default: break;
          }
        },
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(),
            // InkWell(
            //   borderRadius: BorderRadius.circular(20),
            //   child: Text(
            //     "Click me",
            //     style: TextStyle(
            //         color: Colors.indigo,
            //         backgroundColor: Colors.white30,
            //         letterSpacing: 2.0,
            //         fontSize: 50,
            //         fontWeight: FontWeight.w900,
            //         fontFamily: "sans serif",
            //     ),
            //   ),
            //   onTap: _clickMeTapped,
            // ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueGrey,
      child: Center(
          child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 30,
          fontStyle: FontStyle.italic,
        ),
      )),
    );
  }
}

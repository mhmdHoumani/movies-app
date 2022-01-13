import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final _snackBar = SnackBar(
          content: Text("Button Clicked"),
          backgroundColor: Colors.blueAccent,
        );
        ScaffoldMessenger.of(context).showSnackBar(_snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(12.0)
        ),
        child: Text(
          "Click me",
          style: TextStyle(
            color: Colors.yellowAccent.shade100,
            letterSpacing: 10.0,
            fontSize: 40,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            fontFamily: "Cursive",
          ),
        ),
      ),
    );
  }
}

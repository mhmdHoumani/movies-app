import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
  int _personCounter = 1;
  int _tipPercentage = 0;
  double _amount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(
            15.0, MediaQuery.of(context).size.height * 0.04, 15.0, 0.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.purpleAccent.shade100.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Total Per Person",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "\$${calculateTotalPerPerson(_amount, _tipPercentage, _personCounter)}",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.purple.shade800,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.blueGrey.shade100),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      prefixText: "Bill Amount \$",
                      //prefixIcon: Icon(Icons.attach_money)
                    ),
                    onSubmitted: (String value) {
                      try {
                        if (double.parse(value) > -1) {
                          _amount = double.parse(value);
                        } else {
                          final _snackBar = SnackBar(
                            content: Text(
                                "the 'Bill' should not be a negative number."),
                            backgroundColor: Colors.blueAccent,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                          _amount = 0.0;
                        }
                      } catch (exception) {
                        final _snackBar = SnackBar(
                          content: Text(
                            "the 'Bill' should not be empty.",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          backgroundColor: Colors.grey,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                        _amount = 0.0;
                      }
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Split",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                setState(() {
                                  if (_personCounter > 1) _personCounter--;
                                });
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.purpleAccent.shade100
                                      .withOpacity(0.1),
                                ),
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.purpleAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "$_personCounter",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {
                                setState(() => _personCounter++);
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.purpleAccent.shade100
                                      .withOpacity(0.1),
                                ),
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.purpleAccent,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Tip",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: Text(
                            "\$${calculateTotalTip(_amount, _tipPercentage).toStringAsFixed(2)}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$_tipPercentage%",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Slider(
                        min: 0,
                        max: 100,
                        divisions: 20,
                        activeColor: Colors.purpleAccent,
                        inactiveColor: Colors.grey,
                        value: _tipPercentage.toDouble(),
                        onChanged: (double value) {
                          setState(() => _tipPercentage = value.round());
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  calculateTotalPerPerson(double billAmount, int tipPercentage, int split) {
    double totalPerPerson =
        (calculateTotalTip(billAmount, tipPercentage) + billAmount) / split;
    return totalPerPerson.toStringAsFixed(2);
  }

  calculateTotalTip(double billAmount, int tipPercentage) {
    return (billAmount * tipPercentage) / 100;
  }
}

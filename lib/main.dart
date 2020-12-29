// core
import 'package:flutter/material.dart';

// component
import 'assets/btn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calculator",
        home: Scaffold(
          backgroundColor: Color(
              int.parse('#1F1F1F'.substring(1, 7), radix: 16) + 0xFF000000),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10, bottom: 18),
                alignment: Alignment(1, 1),
                child: Text(
                  "10 + 10",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10, bottom: 30),
                alignment: Alignment(1, 1),
                child: Text(
                  "20",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Btn(
                    symbol: "AC",
                    symbSize: 20,
                    bold: false,
                    backCol: "#131313",
                  ),
                  Btn(
                    symbol: "C",
                    symbSize: 20,
                    bold: false,
                    backCol: "#131313",
                  ),
                  Btn(
                    symbol: "%",
                    symbSize: 20,
                    bold: false,
                    backCol: "#131313",
                  ),
                  Btn(
                    symbol: "/",
                    symbSize: 20,
                    bold: false,
                    backCol: "#131313",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Btn(
                    symbol: "7",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "8",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "9",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "*",
                    symbSize: 20,
                    bold: false,
                    backCol: "#131313",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Btn(
                    symbol: "4",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "5",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "6",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "-",
                    symbSize: 20,
                    bold: false,
                    backCol: "#131313",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Btn(
                    symbol: "1",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "2",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "3",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "+",
                    symbSize: 20,
                    bold: false,
                    backCol: "#131313",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Btn(
                    symbol: ".",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "0",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "00",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    symbol: "=",
                    symbSize: 20,
                    bold: false,
                    backCol: "#234f64",
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

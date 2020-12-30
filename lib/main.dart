// core
import 'package:flutter/material.dart';

// component
import 'assets/btn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // state
  String _result = "";
  String _expression = "";

  // other
  List<String> symbolExpression = ["%", "/", "*", "-", "+", "."];

  // method
  void handelTab(String symbol) {
    setState(() {
      if (_expression.length == 0 &&
          symbolExpression.any((e) => e.contains(symbol))) return;
      if (symbolExpression.any((e) => e.contains(symbol)) &&
          symbolExpression.any(
              (e) => e.contains(_expression.substring(_expression.length - 1)))) {
        String newStr = _expression.replaceAll(RegExp(r'.$'), symbol);
        _expression = newStr;
        return;
      }
      _expression += symbol;
    });
  }

  void handelClear(String symbol) {
    setState(() {
      _expression = "";
    });
  }

  void handelAllClear(String symbol) {
    setState(() {
      _expression = "";
      _result = "";
    });
  }

  // render
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
                  _expression,
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
                  _result,
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
                    cb: handelAllClear,
                    symbol: "AC",
                    symbSize: 20,
                    bold: false,
                    backCol: "#131313",
                  ),
                  Btn(
                    cb: handelClear,
                    symbol: "C",
                    symbSize: 20,
                    bold: false,
                    backCol: "#131313",
                  ),
                  Btn(
                    cb: handelTab,
                    symbol: "%",
                    symbSize: 20,
                    bold: false,
                    backCol: "#131313",
                  ),
                  Btn(
                    cb: handelTab,
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
                    cb: handelTab,
                    symbol: "7",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
                    symbol: "8",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
                    symbol: "9",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
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
                    cb: handelTab,
                    symbol: "4",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
                    symbol: "5",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
                    symbol: "6",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
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
                    cb: handelTab,
                    symbol: "1",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
                    symbol: "2",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
                    symbol: "3",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
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
                    cb: handelTab,
                    symbol: ".",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
                    symbol: "0",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
                    symbol: "00",
                    symbSize: 36,
                    bold: true,
                    backCol: "#060606",
                  ),
                  Btn(
                    cb: handelTab,
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

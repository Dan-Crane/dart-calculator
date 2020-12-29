import "package:flutter/material.dart";

class Btn extends StatelessWidget {
  final String symbol;
  final double symbSize;
  final bool bold;
  final String backCol;

  const Btn({Key key, this.symbol, this.symbSize = 48, this.bold, this.backCol})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: SizedBox(
        width: 90,
        height: 65,
        child: FlatButton(
          child: Text(
            symbol,
            style: TextStyle(
              fontSize: symbSize,
              fontWeight: bold ? FontWeight.bold : FontWeight.normal,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
          color:
              Color(int.parse(backCol.substring(1, 7), radix: 16) + 0xFF000000),
        ),
      ),
    );
  }
}

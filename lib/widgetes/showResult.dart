import 'package:flutter/material.dart';

import 'button.widget.dart';

class showResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Text(
            "Compensa utilizar alcool",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          buttonWidget(
            label: "Calcular novamente",
          )
        ],
      ),
    );
  }
}

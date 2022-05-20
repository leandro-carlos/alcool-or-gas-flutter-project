import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 60,
        ),
        Container(
          child: Image.asset("assets/images/aog-white.png"),
          height: 80,
        ),
        const Text(
          "Alcool ou Gasolina",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: "Big Shoulders Display",
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

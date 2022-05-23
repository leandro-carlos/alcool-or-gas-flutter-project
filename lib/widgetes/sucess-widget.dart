import 'package:flutter/material.dart';
import 'loading-widget-button.dart';

class sucessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white.withOpacity(0.8),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Text(
            "Compensa álcool",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 45,
              fontFamily: "Big Shoulders Display",
            ),
          ),
          SizedBox(
            height: 5,
          ),
          loadingButton(
              busy: false,
              func: () {},
              invert: false,
              text: "Calcular novamente")
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class formField extends StatelessWidget {
  var label = "";
  var ctrl = MoneyMaskedTextController();

  formField({required this.ctrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Big Shoulders Display",
              fontSize: 30,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(border: InputBorder.none),
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontFamily: "Big Shoulders Display",
            ),
          ),
        )
      ],
    );
  }
}

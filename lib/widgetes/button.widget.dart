import 'package:flutter/material.dart';

class buttonWidget extends StatelessWidget {
  var label = "";
  buttonWidget({required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        color: Colors.white.withOpacity(0.8),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: "Big Shoulders Display",
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}

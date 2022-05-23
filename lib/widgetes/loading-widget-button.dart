import '../archives/button.widget.dart';
import 'package:flutter/material.dart';

class loadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  late Function func;
  var text = "";

  loadingButton({
    required this.busy,
    required this.func,
    required this.invert,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: invert
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                  fontFamily: "Big Shoulders Display",
                  fontSize: 35,
                ),
              ),
            ),
          );
  }
}

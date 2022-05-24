import 'package:alcool_or_gas/widgetes/sucess-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import '../widgetes/logo.widget.dart';
import '../widgetes/submit-form.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var gasCtrl = MoneyMaskedTextController();
  var alcCtrl = MoneyMaskedTextController();
  var completed = false;
  var busy = false;
  var resultText = "Compensa mais alcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          logo(),
          completed
              ? sucessWidget(result: resultText, reset: () {})
              : submitForm(
                  busy: busy,
                  submit: calculate,
                  alcCtrl: alcCtrl,
                  gasCtrl: gasCtrl,
                )
        ],
      ),
    );
  }

  Future calculate() async {
    double.parse(gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double.parse(alcCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;

    setState(() {
      busy = true;
      completed = false;
    });
  }
}

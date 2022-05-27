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
  var busy = false;
  var completed = false;
  var resultText = "Compensa utilizar álcool";
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          logo(),
          completed
              ? sucessWidget(
                  result: resultText,
                  reset: reset,
                )
              : submitForm(
                  alcCtrl: alcCtrl,
                  gasCtrl: gasCtrl,
                  busy: busy,
                  submit: calculate,
                ),
        ],
      ),
    );
  }

  Future calculate() async {
    double alc =
        double.parse(alcCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double gas =
        double.parse(gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double res = alc / gas;

    setState(
      () {
        completed = false;
        busy = true;
      },
    );

    return new Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        if (res >= 0.7) {
          resultText = "Compensa utilizar Gasolina";
        } else {
          resultText = "Compensa utilizar Álcool";
        }

        completed = true;
        busy = false;
      });
    });
  }

  reset() {
    alcCtrl = new MoneyMaskedTextController();
    gasCtrl = new MoneyMaskedTextController();
    busy = false;
    completed = false;
  }
}

import 'package:alcool_or_gas/archives/button.widget.dart';
import 'package:alcool_or_gas/widgetes/form.widget.dart';
import 'package:alcool_or_gas/widgetes/loading-widget-button.dart';
import 'package:alcool_or_gas/widgetes/logo.widget.dart';
import 'package:alcool_or_gas/widgetes/sucess-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  var gasCtrl = MoneyMaskedTextController();
  var alcCtrl = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          logo(),
          sucessWidget(),
          formField(
            ctrl: gasCtrl,
            label: "Gasolina",
          ),
          formField(
            ctrl: alcCtrl,
            label: "Alcool",
          ),
          loadingButton(
            busy: true,
            func: () {},
            invert: false,
            text: "Calcular",
          ),
        ],
      ),
    );
  }
}

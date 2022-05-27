import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'loading-widget-button.dart';
import 'package:alcool_or_gas/widgetes/form.widget.dart';

class submitForm extends StatelessWidget {
  var busy = false;
  Function() submit;
  var gasCtrl = MoneyMaskedTextController();
  var alcCtrl = MoneyMaskedTextController();

  submitForm(
      {required this.busy,
      required this.submit,
      required this.alcCtrl,
      required this.gasCtrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 30, left: 30),
          child: formField(
            ctrl: gasCtrl,
            label: "Gasolina",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 30, left: 30),
          child: formField(
            ctrl: alcCtrl,
            label: "Álcool",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 15,
            left: 15,
          ),
          child: loadingButton(
            busy: busy,
            func: submit,
            invert: false,
            text: "Calcular",
          ),
        ),
      ],
    );
  }
}

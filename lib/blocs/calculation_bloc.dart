import 'dart:developer';

import 'package:extended_masked_text/extended_masked_text.dart';

class CalculationBloc {
  var alcoholCtrl =
      MoneyMaskedTextController(decimalSeparator: ',', precision: 2);
  var gasolineCtrl =
      MoneyMaskedTextController(decimalSeparator: ',', precision: 2);
  var message = "Preencha os dados para calcular!";

  calculate() {
    double alcohol = alcoholCtrl.numberValue;
    double gasoline = gasolineCtrl.numberValue;
    double result = alcohol / gasoline;
    log(result.toString());

    if (result < 0.7) {
      message = "Abasteça com Álcool!";
    } else {
      message = "Abasteça com gasolina!";
    }
  }
}

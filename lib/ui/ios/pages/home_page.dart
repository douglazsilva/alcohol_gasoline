import 'package:alcohol_gasoline/blocs/calculation_bloc.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = CalculationBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Álcool ou Gasolina'),
      ),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: 'Álcool (R\$ por litro)',
              keyboardType: TextInputType.number,
              controller: bloc.alcoholCtrl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: 'Gasolina (R\$ por litro)',
              keyboardType: TextInputType.number,
              controller: bloc.gasolineCtrl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              bloc.message,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CupertinoButton.filled(
              onPressed: () {
                setState(() {
                  bloc.calculate();
                });
              },
              child: const Text('Calcular'),
            ),
          ),
        ],
      ),
    );
  }
}

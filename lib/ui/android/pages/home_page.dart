import 'package:flutter/material.dart';

import '../../../blocs/calculation_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = CalculationBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Álcool ou Gasolina"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration:
                  const InputDecoration(labelText: "Álcool (R\$ por litro)"),
              controller: bloc.alcoholCtrl,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration:
                  const InputDecoration(labelText: "Gasolina (R\$ por litro)"),
              controller: bloc.gasolineCtrl,
              keyboardType: TextInputType.number,
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
              child: ElevatedButton(
                child: const Text("Calcular"),
                onPressed: () {
                  setState(() {
                    bloc.calculate();
                  });
                },
              )),
        ],
      ),
    );
  }
}

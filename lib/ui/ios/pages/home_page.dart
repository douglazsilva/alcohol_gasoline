import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Álcool ou Gasolina'),
      ),
      child: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: 'Álcool (R\$ por litro)',
              keyboardType: TextInputType.number,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: 'Gasolina (R\$ por litro)',
              keyboardType: TextInputType.number,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Preencha os dados para calcular!',
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CupertinoButton.filled(
              onPressed: () {
                setState(() {});
              },
              child: const Text('Calcular'),
            ),
          ),
        ],
      ),
    );
  }
}

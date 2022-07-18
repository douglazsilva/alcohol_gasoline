import 'package:flutter/cupertino.dart';

import 'pages/home_page.dart';

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Álcool ou Gasolina',
      home: HomePage(),
    );
  }
}

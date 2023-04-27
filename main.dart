import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

import 'game.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ProTurnbased",
      home: gamePlay(),
    );
  }
}

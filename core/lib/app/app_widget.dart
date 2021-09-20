import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Microfront-end with Monorepo',
      theme: ThemeData(primarySwatch: Colors.blue),
    ).modular();
  }
}

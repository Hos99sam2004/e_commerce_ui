// import 'package:e_commerce_ui/listgeneration.dart';
import 'package:e_commerce_ui/myhomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const E_commerce());
}

class E_commerce extends StatelessWidget {
  const E_commerce({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

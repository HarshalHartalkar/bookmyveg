import 'package:bookmyveg/BNB.dart';
import 'package:flutter/material.dart';

class Sscreen extends StatefulWidget {
  const Sscreen({Key? key}) : super(key: key);

  @override
  State<Sscreen> createState() => _SscreenState();
}

class _SscreenState extends State<Sscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BNB(),
      body: Center(),
    );
  }
}

import 'package:bookmyveg/BNB.dart';
import 'package:bookmyveg/LNavBar.dart';
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
      drawer: lnavbar(),
      appBar: AppBar(
        bottomOpacity: 500,
        backgroundColor: const Color.fromRGBO(234, 235, 209, 100),
        title: const Text("Book My Veg",
            style: TextStyle(color: const Color.fromRGBO(13, 126, 16, 100))),
        iconTheme: const IconThemeData(color: Colors.deepOrange),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.search, size: 30)),
        ],
      ),
      body: Center(),
    );
  }
}

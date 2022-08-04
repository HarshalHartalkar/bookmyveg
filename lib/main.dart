import 'package:bookmyveg/BNB.dart';
import 'package:bookmyveg/NavBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: Colors.tealAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color.fromRGBO(234, 235, 209, 0.90),
      ),
      home: MyHomePage(),
      //home: login(),
      //home: signup(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BNB(),
        drawer: NavBar(),
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
        body: Center()
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

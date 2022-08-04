import 'package:bookmyveg/SignUp.dart';
import 'package:bookmyveg/main.dart';
import 'package:bookmyveg/skippedscreen.dart';
import 'package:flutter/material.dart';

import 'SignUp.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();

//
}

class _loginState extends State<login> {
  bool _obtext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 1,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: 150,
                ),
                SizedBox(
                  height: 70,
                  width: 350,
                  child: Row(
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                  width: 350,
                  child: Text(
                    'Please enter your credentials',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  //padding: EdgeInsets.symmetric(horizontal: 28, vertical: 5),
                  width: 360,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.black,
                    elevation: 4,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      //textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Enter Mobile Number",
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                        filled: true,
                        border: InputBorder.none, //  fillColor: Colors.pink,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  //margin: EdgeInsets.symmetric(vertical: 0.),
                  //padding: EdgeInsets.symmetric(horizontal: 28, vertical: 5),
                  width: 360,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.black,
                    elevation: 4,
                    child: TextField(
                      obscureText: _obtext,
                      keyboardType: TextInputType.phone,
                      //textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        //hintText: "Enter Mobile Number",
                        prefixIcon: Icon(
                          Icons.key,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obtext ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _obtext = !_obtext;
                            });
                          },
                        ),
                        filled: true,
                        border: InputBorder.none, //  fillColor: Colors.pink,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  //padding: EdgeInsets.symmetric(horizontal: 28, vertical: 5),
                  width: 360,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(50),
                    shadowColor: Colors.black,
                    elevation: 4,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyHomePage()));
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Row(
                  // margin: EdgeInsets.only(top: 5),
                  // //padding: EdgeInsets.symmetric(horizontal: 28, vertical: 5),
                  // width: 360,
                  // height: 35,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: Text(
                        "New User? Please SignUp",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Sscreen()));
                  },
                  child: Text(
                    "Skip >",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

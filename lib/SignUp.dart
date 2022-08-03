import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();

//
}

class _signupState extends State<signup> {
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
                  height: 20,
                  width: 1,
                ),
                CircleAvatar(
                    radius: 50,
                    backgroundColor: Color.fromRGBO(234, 235, 209, 0),
                    backgroundImage: AssetImage('assets/images/logo.png')),
                SizedBox(
                  height: 30,
                  width: 350,
                  child: Row(
                    children: [
                      Text(
                        'Sign Up',
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
                  //height: ,
                  width: 350,
                  child: Text(
                    'Please enters',
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
                      keyboardType: TextInputType.phone,
                      //textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        //hintText: "Enter Mobile Number",
                        prefixIcon: Icon(
                          Icons.key,
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
                        print("Hello");
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
                        signup();
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
                  onPressed: () {},
                  child: Text(
                    "Skip>",
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

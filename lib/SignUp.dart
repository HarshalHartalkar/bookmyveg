import 'package:bookmyveg/login_page.dart';
import 'package:bookmyveg/skippedscreen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();

//
}

class _signupState extends State<signup> {
  TextEditingController _date = TextEditingController();
  bool isObsecure = true;

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
                  height: 35,
                  width: 1,
                ),
                CircleAvatar(
                    radius: 55,
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
                    'Please enter your credentials',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  //padding: EdgeInsets.symmetric(horizontal: 28, vertical: 5),
                  width: 360,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.black,
                    elevation: 4,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      //textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Enter Name",
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
                        hintText: "Enter Mobile Number",
                        prefixIcon: Icon(
                          Icons.phone_android_rounded,
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
                  margin: EdgeInsets.symmetric(vertical: 10),
                  //padding: EdgeInsets.symmetric(horizontal: 28, vertical: 5),
                  width: 360,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.black,
                    elevation: 4,
                    child: TextField(
                      controller: _date,
                      keyboardType: TextInputType.datetime,
                      //textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Enter DOB (dd-MM-yyyy)",
                        prefixIcon: Icon(
                          Icons.calendar_month,
                        ),
                        filled: true,
                        border: InputBorder.none, //  fillColor: Colors.pink,
                      ),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2101));

                        if (pickeddate != null) {
                          setState(() {
                            _date.text =
                                DateFormat('dd/MM/yyyy').format(pickeddate);
                            //print(pickeddate);
                          });
                        }
                      },
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
                      keyboardType: TextInputType.emailAddress,
                      //textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Enter Email ID",
                        prefixIcon: Icon(
                          Icons.mail,
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
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: 360,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.black,
                    elevation: 4,
                    child: TextField(
                      obscureText: isObsecure,
                      decoration: InputDecoration(
                        //hintText: "Enter Mobile Number",
                        prefixIcon: Icon(
                          Icons.key,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObsecure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              isObsecure = !isObsecure;
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
                  margin: EdgeInsets.only(top: 10),
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
                        'SIGN UP',
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
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      child: Text(
                        "Already registered? Login",
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ),
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
                        style: TextStyle(color: Colors.green, fontSize: 17),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

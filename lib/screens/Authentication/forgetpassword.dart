import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Authentication/login.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade200,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    )),
              ],
            ),
            Center(
              child: Text(
                "Forget Password ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Please  enter your Email to continue",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Email",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                hintText: "Email Address",
                hintStyle: TextStyle(color: Colors.grey.shade500),
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0)),
                  color: Color(0XFF1A7FBA),
                ),
                child: Center(
                  child: Text(
                    "Send ",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 55.0, horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    indent: 1.0,
                    color: Colors.black38,
                  )),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('Or')),
                  Expanded(
                      child: Divider(
                    indent: 1.0,
                    color: Colors.black38,
                  )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Back To ",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return login();
                      }));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0XFF1A7FBA),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

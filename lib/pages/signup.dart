import 'package:flutter/material.dart';
import 'package:poyek_akhir/pages/login.dart';
import 'package:poyek_akhir/widget/widget_support.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color(0xFFff5c30),
                    Color(0xFFe74b1a),
                  ])),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo.png",
                      width: MediaQuery.of(context).size.width / 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(height: 30.0),
                          Text(
                            "SignUp",
                            style: AppWidget.HeadlineTextFeildStyle(),
                          ),
                          SizedBox(height: 30.0),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Name",
                                hintStyle: AppWidget.SemiBoldTextFeildStyle(),
                                prefixIcon: Icon(Icons.person_outlined)),
                          ),
                          SizedBox(height: 30.0),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: AppWidget.SemiBoldTextFeildStyle(),
                                prefixIcon: Icon(Icons.email_outlined)),
                          ),
                          SizedBox(height: 30.0),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: AppWidget.SemiBoldTextFeildStyle(),
                                prefixIcon: Icon(Icons.password_outlined)),
                          ),
                          SizedBox(
                            height: 80.0,
                          ),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color(0xffff5722),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "already have an account? Login",
                      style: AppWidget.SemiBoldTextFeildStyle(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}

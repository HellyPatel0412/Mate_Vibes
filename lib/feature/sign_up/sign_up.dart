import 'dart:html';
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:mate_vibes/feature/chat/chat.dart';
import 'package:mate_vibes/feature/homepage/bottom_bar.dart';
import 'package:mate_vibes/feature/sign_in/sign_in.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String username = '';
  String email = '';
  String phone = '';
  String confirm = '';
  String password = '';
  final formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final confirmpasscontroller = TextEditingController();

  final usernamecontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

  final emailReg = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final passReg =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 25, top: 45),
              child: Text(
                'Let\'s Get Started !',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.only(left: 35),
                child: Text(
                  'Create account to create with people',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(
              height: 25,
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 280, right: 250),
                child: Column(
                  children: [
                    TextFormField(
                      controller: usernamecontroller,
                      decoration: InputDecoration(
                          // errorText: "Enter a valid username",
                          hintText: "Username",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      validator: (username) {
                        if (username == null || username.isEmpty) {
                          return "Enter Username";
                        } else if (username.length < 3) {
                          return "Enter a valid Username";
                        }
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: emailcontroller,
                      decoration: InputDecoration(

                          // errorText: "Enter Valid Email Address",
                          hintText: "Email address",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      validator: (email) {
                        if (email == null || email.isEmpty) {
                          return "Enter Email address";
                        } else if (email != null && !emailReg.hasMatch(email)) {
                          return "Enter a valid email address";
                        }
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: phonecontroller,
                      decoration: InputDecoration(
                          hintText: "Phone number",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      validator: (phone) {
                        if (phone == null || phone.isEmpty) {
                          return "Enter Phone Number";
                        } else if (phone.length < 10) {
                          return "Enter a 10 digit phone number";
                        }
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                          // errorText: "Enter a Valid Password",
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      obscureText: true,
                      validator: (password) {
                        if (password == null || password.isEmpty) {
                          return "Enter password";
                        } else if (password != null &&
                            !passReg.hasMatch(password)) {
                          return "Password must contain atleast 1 uppercase,1 Lowercase,1 special symbol & should be atleast 8 characters in length";
                        }
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: confirmpasscontroller,
                      decoration: InputDecoration(
                          hintText: "Confirm password",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      obscureText: true,
                      validator: (confirm) {
                        if (confirm == null || confirm.isEmpty) {
                          return "Enter confirm password";
                        }
                        if (confirm != password) {
                          return "Confirmation password doesnt match the entered password";
                        }
                      },
                    ),
                    SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                bool? validate = formKey.currentState?.validate();
                if (validate != null) {
                  formKey.currentState?.save();
                }

                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: emailcontroller.text,
                        password: passwordcontroller.text)
                    .then((value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                }).onError((error, stackTrace) {
                  print("Error ${error.toString()}");
                });
              },
              child: Text("CREATE ACCOUNT"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                minimumSize: Size(231, 45),
                textStyle: TextStyle(
                    fontSize: 12,
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.bold),
                onPrimary: Color(0xFFFFFFFF),
                primary: Color(0xFF8E35FF),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Continue to"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: Text("Sign In"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

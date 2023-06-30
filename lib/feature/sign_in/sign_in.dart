import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mate_vibes/feature/chat/chat.dart';
import 'package:mate_vibes/feature/create_account/create_account.dart';
import 'package:mate_vibes/feature/forgot_password/forgot_password.dart';
import 'package:mate_vibes/feature/homepage/bottom_bar.dart';
import 'package:mate_vibes/feature/sign_up/sign_up.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailcontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

  String email = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();
  final passReg =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  final emailReg = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // padding: const EdgeInsets.only(left: 500, right: 400),
      child: ListView(
        children: [
          Stack(alignment: AlignmentDirectional.center, children: [
            Image.asset(
              'images/friends.png',
            ),
            Image.asset('images/Vector.png'),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text(
                    "Sign in to continue",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 440, right: 440),
                        child: TextFormField(
                          controller: emailcontroller,
                          decoration: InputDecoration(
                              hintText: "Email Address",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          validator: (email) {
                            if (email != null && email.isEmpty) {
                              return "Enter Email address";
                            } else if (email != null &&
                                !emailReg.hasMatch(email)) {
                              return "Enter a valid email address";
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 440, right: 440),
                        child: TextFormField(
                          controller: passwordcontroller,
                          decoration: InputDecoration(
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return "Enter password";
                            } else if (password != null &&
                                !passReg.hasMatch(password)) {
                              return "Password must contain atleast 1 uppercase,1 Lowercase,1 special symbol & should be atleast 8 characters in length";
                            }
                          },
                          obscureText: true,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 285),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPassword()));
                            },
                            child: Text("Forgot Password?")),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    bool? validate = _formKey.currentState?.validate();
                    if (validate != null) {
                      _formKey.currentState?.save();
                    }
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: emailcontroller.text,
                            password: passwordcontroller.text)
                        .then((value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateAccount()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  },
                  child: Text(
                    "SIGN IN",
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(180, 45),
                      textStyle: TextStyle(fontSize: 20),
                      onPrimary: Color(0xFFFFFFFF),
                      primary: Color(0xFF8E35FF)),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ));
                        },
                        child: Text("Sign Up"))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

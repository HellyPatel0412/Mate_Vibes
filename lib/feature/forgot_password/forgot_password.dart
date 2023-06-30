import 'package:flutter/material.dart';
import 'package:mate_vibes/feature/sign_in/sign_in.dart';

class ForgotPassword extends StatelessWidget {
  String? email;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailReg = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: Image.asset('images/Lock.png'),
            ),
            SizedBox(height: 35),
            Text(
              "Forgot Password ?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We’ll send a link to reset password over \nbelow entered email address or phone \nnumber.",
            ),
            SizedBox(
              height: 45,
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 380, right: 250),
                child: Container(
                  decoration: BoxDecoration(boxShadow: []),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 150, right: 250),
                    child: TextFormField(
                      onSaved: (newValue) {
                        email = newValue;
                      },
                      decoration: InputDecoration(
                        // errorText: "Enter email address",
                        hintText: "Email address",

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 3, color: Colors.grey)),
                      ),
                      validator: (email) {
                        if (email != null && email.isEmpty) {
                          return "Enter Email address";
                        } else if (email != null && !emailReg.hasMatch(email)) {
                          return "Enter a valid email address";
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                "OR",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 380, right: 250),
              child: Container(
                decoration: BoxDecoration(boxShadow: []),
                child: Padding(
                  padding: const EdgeInsets.only(left: 150, right: 250),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Phone number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(35))),
              padding: EdgeInsets.only(left: 20),
              child: ElevatedButton(
                onPressed: () {
                  bool? validate = _formKey.currentState?.validate();
                  if (validate != null) {
                    _formKey.currentState?.save();
                  }
                },
                child: Text(
                  "CONTINUE",
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    minimumSize: Size(180, 45),
                    textStyle: TextStyle(fontSize: 20),
                    onPrimary: Color(0xFFFFFFFF),
                    primary: Color(0xFF8E35FF)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TextButton(
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                }),
                child: Text("Continue to Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

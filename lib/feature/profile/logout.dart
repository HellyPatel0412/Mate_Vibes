import 'package:flutter/material.dart';
import 'package:mate_vibes/feature/homepage/bottom_bar.dart';
import 'package:mate_vibes/feature/profile/profile_page.dart';
import 'package:mate_vibes/feature/sign_in/sign_in.dart';

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Center(
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.grey[100]),
              ),
              // Positioned(left: 190, child: Image.asset('images/Circle2.png')),
              // Positioned(left: 180, child: Image.asset('images/Circle3.png')),
              // Positioned(
              //     left: 140,
              //     bottom: 70,
              //     child: Image.asset('images/Circle4.png')),

              Positioned(
                top: 50,
                left: 50,
                child: Text(
                  "   Are you sure you want to Logout? ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 140,
                left: 70,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    "LogOut",
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    minimumSize: Size(180, 45),
                    textStyle: TextStyle(fontSize: 20),
                    onPrimary: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Navi()));
                  },
                  child: Text(
                    "Cancel",
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    minimumSize: Size(180, 45),
                    textStyle: TextStyle(fontSize: 20),
                    onPrimary: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

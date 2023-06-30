import 'package:flutter/material.dart';
import 'package:mate_vibes/feature/homepage/bottom_bar.dart';

class CreateAccountSuccess extends StatelessWidget {
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
                height: 250,
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
                  left: 210, top: 15, child: Image.asset('images/Circle.png')),
              Positioned(
                  left: 225, top: 37, child: Image.asset('images/tick.png')),
              Positioned(
                top: 120,
                left: 30,
                child: Text(
                  "    Your Account Has Been Created Successfully .",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Positioned(
                top: 180,
                left: 160,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Navi()));
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

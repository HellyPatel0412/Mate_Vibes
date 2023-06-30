import 'package:flutter/material.dart';

import 'package:mate_vibes/feature/donation/color.dart';

import 'package:mate_vibes/feature/donation/people/diana/diana_master.dart';
import 'package:mate_vibes/feature/donation/people/diana/diana_upi.dart';
import 'package:mate_vibes/feature/donation/people/diana/diana_visa.dart';

import '../../typo.dart';

class Marcella extends StatefulWidget {
  @override
  State<Marcella> createState() => _MarcellaState();
}

class _MarcellaState extends State<Marcella> {
  var selectPaymentCard = "VISA";
  var selectedPayment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: black,
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.network(
                  "https://images.unsplash.com/photo-1542570031-5915884ffb12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTJ8NDE4NjExfHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
                  height: 100,
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Marcella",
                      style: TextStyle(
                          fontFamily: 'Manrope', color: white, fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "London",
                      style: TextStyle(
                          fontFamily: "Manrope", color: grey, fontSize: 22),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Donate \$250",
                  style: TextStyle(
                      fontFamily: "Manrope", color: yellow, fontSize: 25),
                ),
                SizedBox(
                  width: 6,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "About",
                    style: TextStyle(
                        fontFamily: 'Manrope', color: white, fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Center(
                  child: Text(
                    "Marcella will use the money to start a NGO. ",
                    style: TextStyle(
                        fontFamily: 'Manrope', color: grey, fontSize: 22),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Method",
                  style: TextStyle(
                      fontFamily: 'Manrope', color: white, fontSize: 22),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VisaPaymentScreen(),
                        ));
                  },
                  child: AnimatedContainer(
                    curve: Curves.easeIn,
                    duration: Duration(milliseconds: 350),
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(24)),
                    child: Container(
                      decoration: BoxDecoration(
                          // // color: title == selectedPayment ? white : black,
                          // // border: title == selectedPayment
                          //     ? Border.all(width: 1, color: Colors.transparent)
                          //     : Border.all(width: 1, color: grey),
                          borderRadius: BorderRadius.circular(24)),
                      width: double.infinity,
                      height: 70,
                      child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Row(
                          children: [
                            Text(
                              "VISA",
                            ),
                            Spacer(),
                            Image.network(
                              "data:image/jpeg;base64,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",
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MasterCardScreen(),
                        ));
                  },
                  child: AnimatedContainer(
                    curve: Curves.easeIn,
                    duration: Duration(milliseconds: 350),
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(24)),
                    child: Container(
                      decoration: BoxDecoration(
                          // // color: title == selectedPayment ? white : black,
                          // // border: title == selectedPayment
                          //     ? Border.all(width: 1, color: Colors.transparent)
                          //     : Border.all(width: 1, color: grey),
                          borderRadius: BorderRadius.circular(24)),
                      width: double.infinity,
                      height: 70,
                      child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Row(
                          children: [
                            Text(
                              "Master Card",
                            ),
                            Spacer(),
                            Image.network(
                              "data:image/png;base64,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",
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UpiPayment(),
                        ));
                  },
                  child: AnimatedContainer(
                    curve: Curves.easeIn,
                    duration: Duration(milliseconds: 350),
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(24)),
                    child: Container(
                      decoration: BoxDecoration(
                          // // color: title == selectedPayment ? white : black,
                          // // border: title == selectedPayment
                          //     ? Border.all(width: 1, color: Colors.transparent)
                          //     : Border.all(width: 1, color: grey),
                          borderRadius: BorderRadius.circular(24)),
                      width: double.infinity,
                      height: 70,
                      child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Row(
                          children: [
                            Text(
                              "UPI Payment",
                            ),
                            Spacer(),
                            Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/UPI-Logo-vector.svg/1200px-UPI-Logo-vector.svg.png",
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ))),
    );
  }

  selectPayments(title) {
    setState(() {
      selectedPayment = title;
    });
  }
}

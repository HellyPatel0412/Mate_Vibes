import "package:flutter/material.dart";

import '../../donation_success.dart';

class UpiPayment extends StatefulWidget {
  const UpiPayment({super.key});

  @override
  State<UpiPayment> createState() => _UpiPaymentState();
}

class _UpiPaymentState extends State<UpiPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UPI Payment'),
        backgroundColor: Colors.grey[800],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          // hintText: '1234 5678 9012 3456',
                          ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'UPI id',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          // hintText: 'MM/YY',
                          ),
                    ),

                    // focusNode: FocusNode(
                    //   canRequestFocus: true,
                    //   onFocusChange: (value) {
                    //     setState(() {
                    //       isCvvFocused = value;
                    //     });
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TransactionSuccessScreen(
                        transactionId: "123456",
                        amount: "\$9.99",
                      ),
                    ));
                // Implement payment logic here
              },
              child: Text('Pay'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mate_vibes/feature/homepage/bottom_bar.dart';
import 'package:mate_vibes/feature/homepage/home_page.dart';
import 'package:mate_vibes/feature/notifications/noti.dart';

class TransactionSuccessScreen extends StatefulWidget {
  final String transactionId;
  final String amount;

  TransactionSuccessScreen({required this.transactionId, required this.amount});

  @override
  State<TransactionSuccessScreen> createState() =>
      _TransactionSuccessScreenState();
}

class _TransactionSuccessScreenState extends State<TransactionSuccessScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 7),
        (() => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Navi()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Successful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 100.0,
            ),
            SizedBox(height: 30.0),
            Text(
              'Transaction successful',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transaction ID: ${widget.transactionId}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Amount: Rs. ${widget.amount}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "You will be redirected to home page shortly",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

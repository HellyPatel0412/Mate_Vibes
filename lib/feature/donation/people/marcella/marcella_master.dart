import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:mate_vibes/feature/donation/donation_success.dart';

class MasterCardScreen extends StatefulWidget {
  @override
  _MasterCardScreenState createState() => _MasterCardScreenState();
}

class _MasterCardScreenState extends State<MasterCardScreen> {
  // static const IconData credit_card =
  //     IconData(0xe19f, fontFamily: 'MaterialIcons');
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Master Card Payment'),
        backgroundColor: Colors.grey[800],
      ),
      body: SafeArea(
        child: Column(
          children: [
            CreditCardWidget(
              bankName: "MASTER CARD",
              obscureCardCvv: true,
              cardBgColor: Colors.grey,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {},
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card number',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 8.0),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: '1234 5678 9012 3456',
                        ),
                        onChanged: (value) {
                          setState(() {
                            cardNumber = value;
                          });
                        },
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Expiry date',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 8.0),
                      TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          hintText: 'MM/YY',
                        ),
                        onChanged: (value) {
                          setState(() {
                            expiryDate = value;
                          });
                        },
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Card holder name',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 8.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'John Doe',
                        ),
                        onChanged: (value) {
                          setState(() {
                            cardHolderName = value;
                          });
                        },
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'CVV',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 8.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: '123',
                        ),
                        onChanged: (value) {
                          setState(() {
                            cvvCode = value;
                          });
                        },
                        // focusNode: FocusNode(
                        //   canRequestFocus: true,
                        //   onFocusChange: (value) {
                        //     setState(() {
                        //       isCvvFocused = value;
                        //     });
                        //   },
                        // ),
                      ),
                    ],
                  ),
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
                        amount: "\$250",
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

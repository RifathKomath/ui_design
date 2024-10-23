import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
              preferredSize: const Size.fromHeight(65),
              child: AppBar(
                iconTheme: const IconThemeData(color: Colors.orange),
                backgroundColor: Colors.white,
                bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(120),
                    child: Text(
                      'Payment',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.orange),
                    )),
              )),
    );
  }
}
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.orange),
            backgroundColor: Colors.white,
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(120),
                child: Text(
                  'New Address',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange),
                )),
          )),
    );
  }
}
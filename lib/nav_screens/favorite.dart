import 'package:flutter/material.dart';
import 'package:uidesign/additional/app_text_colors.dart';
import 'package:uidesign/additional/colors.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

  final AppTextColors _appTextColors = AppTextColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.orange),
          centerTitle: true,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(120),
              child: Text(
                'Favorite',
                style: _appTextColors.appTextStyle_700_24
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                    width: 301.95,
                    height: 353.39,
                    child: Image.asset('assets/image/Group 260.png')),
                 Text(
                  'Your heart is empty',
                  style: _appTextColors.appTextStyle_700_20
                ),
                 Text('Start fall in love with some good\ngoods',textAlign: TextAlign.center,style: smallParagraph(),),
                 const SizedBox(height: 90),
               SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SignupThree()));
                  },
                  child: Text(
                    'Start shopping',
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange)),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

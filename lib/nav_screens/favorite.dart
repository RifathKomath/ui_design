import 'package:flutter/material.dart';
import 'package:uidesign/additional/colors.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.orange),
          centerTitle: true,
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(120),
              child: Text(
                'Favorite',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.orange),
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
                const Text(
                  'Your heart is empty',
                  style: TextStyle(
                      color: Color.fromRGBO(127, 83, 29, 10),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
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

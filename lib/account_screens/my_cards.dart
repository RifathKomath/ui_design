import 'package:flutter/material.dart';
import 'package:uidesign/account_screens/new_card.dart';
import 'package:uidesign/additional/colors.dart';

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.orange),
            backgroundColor: Colors.white,
            actions: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const NewCard()));
                      },
                      icon: const Icon(Icons.add)))
            ],
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(120),
                child: Text(
                  'My Cards',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange),
                )),
          )),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: 380,
                child: Image.asset('assets/image/53 кредитная карта.png')),
            const Text(
              'No Saved Cards',
              style: TextStyle(
                  color: Color.fromRGBO(127, 83, 29, 10),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'You can save your card info to\nmake purchase easier, faster.',
              textAlign: TextAlign.center,
              style: smallParagraph(),
            ),
          ],
        ),
      ),
    );
  }
}

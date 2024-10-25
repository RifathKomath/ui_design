import 'package:flutter/material.dart';
import 'package:uidesign/account_screens/new_card.dart';
import 'package:uidesign/additional/app_text_colors.dart';
import 'package:uidesign/additional/colors.dart';

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  final AppTextColors _appTextColors = AppTextColors();
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
            bottom:  PreferredSize(
                preferredSize: const Size.fromHeight(120),
                child: Text(
                  'My Cards',
                  style: _appTextColors.appTextStyle_700_24
                )),
          )),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: 380,
                child: Image.asset('assets/image/53 кредитная карта.png')),
            Text(
              'No Saved Cards',
              style: _appTextColors.appTextStyle_700_20
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

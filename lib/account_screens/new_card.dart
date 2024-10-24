import 'package:flutter/material.dart';
import 'package:uidesign/account_screens/show_card.dart';
import 'package:uidesign/additional/cards_form_field.dart';

class NewCard extends StatefulWidget {
  const NewCard({super.key});

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  final titeStyle = const TextStyle(
      color: Color.fromRGBO(109, 56, 5, 1),
      fontSize: 18,
      fontWeight: FontWeight.w700);
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
                  'New Card',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange),
                )),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Card number',
                      style: titeStyle,
                    )),
                cardFormField(label: 'xxxx xxxx xxxx xxxx'),
                const SizedBox(
                  height: 30,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Expiry Date',
                      style: titeStyle,
                    )),
                cardFormField(label: 'xxxx xxxx xxxx xxxx'),
                const SizedBox(
                  height: 35,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'CCV',
                      style: titeStyle,
                    )),
                cardFormField(label: 'xxxx xxxx xxxx xxxx'),
                const SizedBox(height: 190,),
               SizedBox(
                  height: 50,
                  width: 343,
                  child: TextButton(
                    onPressed: () {
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const ShowCard()));
                    },
                    child: Text(
                      'Add Card',
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

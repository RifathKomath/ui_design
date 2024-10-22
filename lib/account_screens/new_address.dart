import 'package:flutter/material.dart';
import 'package:uidesign/additional/custom_text_form.dart';

class NewAddress extends StatefulWidget {
  const NewAddress({super.key});

  @override
  State<NewAddress> createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            cutomFormField(label: 'Adress Title'),
            cutomFormField(label: 'Name surname'),
            cutomFormField(label: 'City'),
            cutomFormField(label: 'Address'),
            const SizedBox(height: 160),
            SizedBox(
              height: 50,
              width: 343,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: const TextStyle(color: Colors.white),
                ),
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.orange)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

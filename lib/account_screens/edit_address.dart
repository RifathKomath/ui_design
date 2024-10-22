import 'package:flutter/material.dart';
import 'package:uidesign/additional/custom_text_form.dart';

class EditAddress extends StatefulWidget {
  const EditAddress({super.key});

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
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
                    'Edit Address',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange),
                  )),
            )),
            body: SingleChildScrollView(
              child: Column(
                children: [
                 const  SizedBox(height: 30,),
                  cutomFormField(label: 'Home'),
                  cutomFormField(label: 'Mati egh'),
                  cutomFormField(label: 'Goteborg'),
                  cutomFormField(label: 'Lungangen 6, 41722'),
                  const SizedBox(height: 160),
               SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {
                  Navigator.pop(context);
                  },
                  child: Text(
                    'Update Address',
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
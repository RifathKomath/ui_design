import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:uidesign/additional/app_text_colors.dart';
import 'package:uidesign/additional/custom_text_form.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final AppTextColors _appTextColors = AppTextColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.orange),
            backgroundColor: Colors.white,
            bottom:  PreferredSize(
                preferredSize: const Size.fromHeight(120),
                child: Text(
                  'Edit Profile',
                  style: _appTextColors.appTextStyle_700_24
                )),
          )),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            cutomFormField(label: 'Mati egh'),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: IntlPhoneField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    label: const Text('Phone number'),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
            const Spacer(flex:2 ,),
             SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {
                  Navigator.pop(context);
                  },
                  child: Text(
                    'Update Profile',
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange)),
                ),
              ),
             const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}

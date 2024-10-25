import 'package:flutter/material.dart';
import 'package:uidesign/account_screens/change_password.dart';
import 'package:uidesign/account_screens/edit_profile.dart';
import 'package:uidesign/account_screens/language.dart';
import 'package:uidesign/account_screens/my_cards.dart';
import 'package:uidesign/additional/app_text_colors.dart';
import 'package:uidesign/additional/list_tile.dart';
import 'package:uidesign/signing/sign_in_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final AppTextColors _appTextColors = AppTextColors();

  bool _selectedSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.orange),
            backgroundColor: Colors.white,
            bottom:  PreferredSize(
                preferredSize: const Size.fromHeight(120),
                child: Text(
                  'Profile',
                  style: _appTextColors.appTextStyle_700_24
                )),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            customListView(
                icon: Icons.supervisor_account,
                icon_2: Icons.keyboard_arrow_right_outlined,
                label: 'Edit Profile',
                labelStyle: _appTextColors.appTextStyle_700_18,
                destinationScreen:const EditProfile() ),

            customListView(
                icon: Icons.key,
                icon_2: Icons.keyboard_arrow_right_outlined,
                labelStyle: _appTextColors.appTextStyle_700_18,
                label: 'Change Password',
                destinationScreen: const ChangePassword()),

            customListView(
                icon: Icons.credit_card,
                icon_2: Icons.keyboard_arrow_right_outlined,
                labelStyle: _appTextColors.appTextStyle_700_18,
                label: 'My Cards',
                destinationScreen: const MyCards()),
            const SizedBox(
              height: 20,
            ),
             Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'App Settings',
                    style: _appTextColors.appTextStyle_700_22                )),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
                leading:const  Icon(
                  Icons.notifications,
                  color:  Color.fromRGBO(109, 56, 5, 1),
                  size: 35,
                ),
                title: Text(
                  'Notifications',
                  style: _appTextColors.appTextStyle_700_18
                ),
                trailing: Switch(
                  value: _selectedSwitch,
                  onChanged: (value) {
                    setState(() {
                      _selectedSwitch = value;
                    });
                  },
                  activeColor: Colors.orange,
                )),
            customListView(
                icon: Icons.language,
                icon_2: Icons.keyboard_arrow_right_outlined,
                labelStyle: _appTextColors.appTextStyle_700_18,
                label: 'Language',
                destinationScreen: const Language()),
             ListTile(
              onTap: () => 
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const SignInPage()),(route)=>false),
              leading:const Icon(
                Icons.logout,
                color: Color.fromRGBO(109, 56, 5, 1),
                size: 35,
              ),
              title:  Text(
                'Logout',
                style: _appTextColors.appTextStyle_700_18
            ))
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:uidesign/account_screens/address.dart';
import 'package:uidesign/account_screens/orders.dart';
import 'package:uidesign/account_screens/payment.dart';
import 'package:uidesign/account_screens/profile.dart';
import 'package:uidesign/additional/app_text_colors.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  
  final AppTextColors _appTextColors = AppTextColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65),
            child: AppBar(
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(120),
                  child: Text('Account',
                      style: _appTextColors.appTextStyle_700_24)),
            )),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.supervisor_account,
                  color: Colors.orange,
                  size: 30,
                ),
                title:
                    Text('Profile', style: _appTextColors.appTextStyle_700_18),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Profile())),
              ),
              ListTile(
                leading: const Icon(
                  Icons.card_travel,
                  color: Colors.orange,
                  size: 30,
                ),
                title:
                    Text('Orders', style: _appTextColors.appTextStyle_700_18),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Orders())),
              ),
              ListTile(
                leading: const Icon(
                  Icons.location_on_sharp,
                  color: Colors.orange,
                  size: 30,
                ),
                title:
                    Text('Address', style: _appTextColors.appTextStyle_700_18),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Address()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.payment,
                  color: Colors.orange,
                  size: 30,
                ),
                title:
                    Text('Payment', style: _appTextColors.appTextStyle_700_18),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Payment())),
              )
            ],
          ),
        ));
  }
}

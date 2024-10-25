import 'package:flutter/material.dart';
import 'package:uidesign/account_screens/new_address.dart';
import 'package:uidesign/additional/app_text_colors.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {

  final AppTextColors _appTextColors = AppTextColors();

  List<String> titles = ['Home', 'Office'];
  String subTitles = 'Lungangen 6, 41722';
  List<IconData> icons = [Icons.home, Icons.card_travel];
  IconData icon_2 = Icons.keyboard_arrow_right_rounded;

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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const NewAddress()));
                        },
                        icon: const Icon(Icons.add)))
              ],
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(120),
                  child: Text('Addresses',
                      style: _appTextColors.appTextStyle_700_24)),
            )),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(titles[index],style: _appTextColors.appTextStyle_700_18,),
                leading: Icon(icons[index],color:const Color.fromRGBO(109, 56, 5, 1),),
                subtitle: Text(subTitles,style: _appTextColors.appTextStyle_400_16,),
                trailing: Icon(icon_2),
              );

            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: titles.length));
  }
}

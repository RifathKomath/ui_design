import 'package:flutter/material.dart';
import 'package:uidesign/account_screens/new_card.dart';
import 'package:uidesign/additional/app_text_colors.dart';
import 'package:uidesign/additional/show_card_tile.dart';

class ShowCard extends StatefulWidget {
  const ShowCard({super.key});

  @override
  State<ShowCard> createState() => _ShowCardState();
}

class _ShowCardState extends State<ShowCard> {
  final AppTextColors _appTextColors = AppTextColors();

  List<String> images = [
    'assets/image/Group 237.png',
    'assets/image/Group 237.png',
    'assets/image/Group (2).png'
  ];
  List<IconData> icons = [
    Icons.arrow_forward_ios_rounded,
    Icons.arrow_forward_ios_rounded,
    Icons.check
  ];
  List<String> titles = ['My Card', 'My Card', 'Apple Pay'];
  List<String> subTitles = ['5342 xxxx xxxx 6745', '6589 xxxx xxxx 7850', ''];
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
                              builder: (context) => const NewCard()));
                        },
                        icon: const Icon(Icons.add)))
              ],
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(120),
                  child: Text('My Cards',
                      style: _appTextColors.appTextStyle_700_24)),
            )),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return customShowCrdListView(
                  image: images[index],
                  icon: icons[index],
                  label: titles[index],
                  subLabel: subTitles[index]);
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: images.length));
  }
}

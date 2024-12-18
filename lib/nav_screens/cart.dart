import 'package:flutter/material.dart';
import 'package:count_button/count_button.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:uidesign/nav_screens/detail_page_avacado.dart';
import 'package:uidesign/nav_screens/detail_page_banana.dart';
import 'package:uidesign/nav_screens/detail_page_mango.dart';
import 'package:uidesign/nav_screens/detail_page_salmon.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<int> countValues = List.generate(4, (index) => 0);
  List screens = [
    const DetailPageMango(),
    const DetailPageBanana(),
    const DetailPageAvacado(),
    const DetailPageSalmon(),
  ];

  List<String> images = [
    'assets/image/apple.png',
    'assets/image/banana.png',
    'assets/image/Avocado-PNG-Clipart 1.png',
    'assets/image/salmon.png',
  ];

  List<String> titles = [
    'Red apple',
    'Original Banana',
    'Avocado Bowl',
    'Salmon'
  ];
  List<String> prices = ['4.99', '5.99', '24', '50'];
  List<String> titleLast = ['kg', 'kg', 'st', 'kg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          backgroundColor: Colors.white,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: Text(
              'Cart',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Slidable(
                  direction: Axis.horizontal,
                  endActionPane:
                      ActionPane(motion: const BehindMotion(), children: [
                    SlidableAction(
                      onPressed: (context) => _delete,
                      backgroundColor: Colors.red,
                      icon: Icons.delete,
                      label: 'Delete',
                      autoClose: true,
                    )
                  ]),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => screens[index]));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 65,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 70,
                                  height: 110,
                                  child: Image.asset(images[index])),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    titles[index],
                                    style: const TextStyle(
                                        color: Color.fromRGBO(109, 56, 5, 1),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      CountButton(
                                        selectedValue: countValues[index],
                                        minValue: 0,
                                        maxValue: 99,
                                        backgroundColor: Colors.white,
                                        buttonSize: const Size.fromRadius(13),
                                        incrementIcon: const Icon(
                                          Icons.add,
                                          color: Color.fromRGBO(109, 56, 5, 1),
                                        ),
                                        decrementIcon: const Icon(Icons.remove,
                                            color:
                                                Color.fromRGBO(109, 56, 5, 1)),
                                        onChanged: (value) {
                                          setState(() {
                                            countValues[index] = value;
                                          });
                                        },
                                        valueBuilder: (value) {
                                          return Text(
                                            value.toString(),
                                            style:
                                                const TextStyle(fontSize: 18),
                                          );
                                        },
                                      ),
                                      const SizedBox(width: 75),
                                      const Icon(
                                        Icons.attach_money_outlined,
                                        weight: 5,
                                        color: Color.fromRGBO(109, 56, 5, 1),
                                        size: 20,
                                      ),
                                      Text(
                                        prices[index],
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(109, 56, 5, 1)),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        titleLast[index],
                                        style: const TextStyle(
                                            color:
                                                Color.fromRGBO(109, 56, 5, 1)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: images.length,
            ),
          ),
          SizedBox(
            height: 50,
            width: 343,
            child: TextButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => const SignUp()));
              },
              child: Text(
                'Check Out',
                style: const TextStyle(color: Colors.white),
              ),
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.orange)),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

void _delete() {}

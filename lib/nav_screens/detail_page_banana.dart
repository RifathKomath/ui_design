import 'package:count_button/count_button.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/additional/colors.dart';
import 'package:uidesign/additional/custom_card.dart';
import 'package:uidesign/additional/custom_item_text.dart';

class DetailPageBanana extends StatefulWidget {
  const DetailPageBanana({super.key});

  @override
  State<DetailPageBanana> createState() => _DetailPageBananaState();
}

class _DetailPageBananaState extends State<DetailPageBanana> {
  int countValues = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.orange),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                  height: 150, child: Image.asset('assets/image/pngegg (1).png')),
              const SizedBox(
                height: 20,
              ),
              customItemText(
                  label: 'Original Banana',
                  label_2: '3.00',
                  label_3: '/st',
                  label_4:
                      '''Bananas are a popular, energy-boosting fruit known for their high potassium content, which supports heart health and muscle function. They are also a good source of vitamins, fiber, and natural sugars, making them a quick, nutritious snack.'''),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(
                      child: CountButton(
                        selectedValue: countValues,
                        minValue: 0,
                        maxValue: 99,
                        backgroundColor: Colors.white,
                        buttonSize: const Size.fromRadius(13),
                        incrementIcon: const Icon(
                          Icons.add,
                          color: Color.fromRGBO(109, 56, 5, 1),
                        ),
                        decrementIcon: const Icon(Icons.remove,
                            color: Color.fromRGBO(109, 56, 5, 1)),
                        onChanged: (value) {
                          setState(() {
                            countValues = value;
                          });
                        },
                        valueBuilder: (value) {
                          return Text(
                            value.toString(),
                            style: const TextStyle(fontSize: 18),
                          );
                        },
                      ),
                    ),
                    //  Spacer(flex: ,),
                    const SizedBox(
                      width: 20,
                    ),

                    //  InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //       _isFavorite != _isFavorite;
                    //     });
                    //   },
                    //   child: Icon(_isFavorite ? Icons.favorite_border:Icons.favorite),
                    //  )

                    const Icon(
                      Icons.favorite,
                      color: Colors.orange,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => const SignUp()));
                  },
                  child: Text(
                    'Add To Cart',
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'You may also need',
                      style: itemReviewTitle(),
                    )),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      customCard(
                          image: 'assets/image/apple.png',
                          label: 'Red Apple',
                          icon: Icons.attach_money_outlined,
                          subLabel: '1kg,priceg',
                          price: '4,99'),
                      customCard(
                          image: 'assets/image/banana.png',
                          label: 'Original Banana',
                          subLabel: '1kg,priceg',
                          icon: Icons.attach_money_outlined,
                          price: '4,99'),
                      customCard(
                          image: 'assets/image/Avocado-PNG-Clipart 1.png',
                          label: 'Avacado Bowl',
                          subLabel: '1kg,priceg',
                          icon: Icons.attach_money_outlined,
                          price: '4,99')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
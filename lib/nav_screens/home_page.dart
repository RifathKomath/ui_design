import 'package:flutter/material.dart';
import 'package:uidesign/additional/custom_card.dart';
import 'package:uidesign/additional/custom_categories.dart';
import 'package:uidesign/nav_screens/explore.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.orange,
                  ),
                  Text(
                    'Lungangen',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.orange),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 48,
                width: 343,
                child: SearchBar(
                  elevation: const WidgetStatePropertyAll(0),
                  leading: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.search),
                  ),
                  hintText: 'Search',
                  backgroundColor: const WidgetStatePropertyAll(Colors.black12),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text('Categories',
                      style: TextStyle(
                          color: Color.fromRGBO(109, 56, 5, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.w700)),
                  const Spacer(),
                  InkWell(
                      child: const Text('See All',
                          style: TextStyle(
                              color: Color.fromRGBO(255, 94, 0, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w400)),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Explore())))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    customCatogories(image: 'assets/image/Group 190.png'),
                    customCatogories(image: 'assets/image/Group 192.png'),
                    customCatogories(image: 'assets/image/catgories_8.png'),
                    customCatogories(image: 'assets/image/catgories_7.png'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text('Popular Deals',
                      style: TextStyle(
                          color: Color.fromRGBO(109, 56, 5, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.w700)),
                  Spacer(),
                  InkWell(
                    child: Text('See All',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 94, 0, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
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
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

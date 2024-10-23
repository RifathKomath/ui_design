import 'package:flutter/material.dart';
import 'package:uidesign/additional/custom_card.dart';
import 'package:uidesign/additional/custom_tab.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> images = [
    'assets/image/apple.png',
    'assets/image/banana.png',
    'assets/image/Avocado-PNG-Clipart 1.png',
    'assets/image/salmon.png',
    'assets/image/Avocado-PNG-Clipart 1.png',
    'assets/image/salmon.png',
  ];
  List<String> titles = ['Red apple', 'Original Banana', 'Avocado Bowl', 'Salmon', 'Avocado Bowl', 'Salmon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(165),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.orange),
            backgroundColor: Colors.white,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(10),
                child: Column(
                  children: [
                    const Text(
                      'Fruits',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.orange),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 15,left: 15),
                      child: SizedBox(
                        height: 48,
                        width: 343,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.black38,
                            ),
                            hintText: 'Search',
                            hintStyle: const TextStyle(color: Colors.black38),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                        customTab(label: 'Fruits'),
                        customTab(label: 'Vegitables'),
                        customTab(label: 'Fish'),
                        customTab(label: 'Toys'),
                        ],
                      ),
                    )
                  ],
                )),
          )),
          body: GridView.builder(gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 25.0,
                  childAspectRatio: 1.0,
          
          ), itemBuilder: (context , index){
            return customCard(image: images[index], label: titles[index], subLabel: '', icon: Icons.attach_money_rounded, price: '4,99');
          },itemCount: images.length,),
          
    );
  }
}

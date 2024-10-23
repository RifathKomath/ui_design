import 'package:flutter/material.dart';
import 'package:uidesign/categories.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<String> catagoriesImages = [
    'assets/image/catgories_3.png',
    'assets/image/catgories_1.png',
    'assets/image/catgories_2.png',
    'assets/image/catgories_8.png',
    'assets/image/catgories_10.png',
    'assets/image/catgories_6.png',
    'assets/image/catgories_7.png',
    'assets/image/catgories_8.png',
    'assets/image/catgories_9.png',
    'assets/image/catgories_10.png',
    'assets/image/catgories_11.png',
    'assets/image/catgories_1.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.orange),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
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
              const SizedBox(height: 20),
              SizedBox(
                height: 500,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 25.0,
                    childAspectRatio: 1.0,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Center(
                        child: Image.asset(catagoriesImages[index]),
                      ),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Categories())),
                    );
                  },
                  itemCount: catagoriesImages.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text('Categories',
                      style: TextStyle(
                          color: Color.fromRGBO(109, 56, 5, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 150,
                  ),
                  Text('See All',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 94, 0, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w400))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/image/Group 190.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/image/Group 190.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/image/Group 192.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/image/Group 192.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset('assets/image/Group 197.png'),
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
                  SizedBox(
                    width: 120,
                  ),
                  Text('See All',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 94, 0, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.w400))
                ],
              ),
             const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset('assets/image/Group 232.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/image/Group 200.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/image/Group 202.png'),
                    ],
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20))),
        height: 75,
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.orange,
                  size: 25,
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined,
                      color: Color.fromRGBO(109, 56, 5, 1), size: 25),
                  label: 'Explore'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart,
                      color: Color.fromRGBO(109, 56, 5, 1), size: 25),
                  label: 'Cart'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Color.fromRGBO(109, 56, 5, 1),
                  size: 25,
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.supervisor_account_sharp,
                  color: Color.fromRGBO(109, 56, 5, 1),
                  size: 25,
                ),
                label: 'Account',
              ),
            ],
            selectedFontSize: 15,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Color.fromRGBO(109, 56, 5, 1),
            showUnselectedLabels: true),
      ),
    );
  }
}

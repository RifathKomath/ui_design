import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<String> images = [
    'assets/image/cart_image_1.png',
    'assets/image/cart_image_2 (1).png',
    'assets/image/cart_image_3.png',
    'assets/image/cart_image_4.png'
  ];
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
                )),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset('assets/image/cart_image_1.png'),
              const Divider(),
              Image.asset('assets/image/cart_image_2 (1).png'),
              const Divider(),
              Image.asset('assets/image/cart_image_3.png'),
              const Divider(),
              Image.asset('assets/image/cart_image_4.png'),
              const Divider(),
              const SizedBox(height: 130,),
               SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SignupThree()));
                  },
                  child: Text(
                    'Check Out',
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

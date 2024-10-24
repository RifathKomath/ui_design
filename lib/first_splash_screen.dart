import 'package:flutter/material.dart';
import 'package:uidesign/additional/colors.dart';
import 'package:uidesign/signing/sign_in_page.dart';
import 'package:uidesign/signing/signup_page.dart';

class FirstSplash extends StatefulWidget {
  const FirstSplash({super.key});

  @override
  State<FirstSplash> createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 322,
                child: Image.asset('assets/image/Illustration.png')),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Realax and shop',
                style: TextStyle(
                    color: Color.fromRGBO(127, 83, 29, 10),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Shop online and get grocories\ndelivered from stores to your home\nin as fast as 1 hour',
                style: smallParagraph(),
                textAlign: TextAlign.center,
              ),
              // const SizedBox(
              //   height: 40,
              // ),
             const Spacer(),
              SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUp()));
                  },
                  child: Text(
                    'Sign Up',
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInPage(),));
                  },
                  child: Text(
                    'Sign In',
                    style: const TextStyle(color: Colors.orange),
                  ),
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: const BorderSide(color: Colors.orange),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}

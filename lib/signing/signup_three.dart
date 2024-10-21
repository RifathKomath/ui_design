import 'package:flutter/material.dart';
import 'package:uidesign/additional/colors.dart';
import 'package:uidesign/signing/sign_in_page.dart';

class SignupThree extends StatefulWidget {
  const SignupThree({super.key});

  @override
  State<SignupThree> createState() => _SignupThreeState();
}

class _SignupThreeState extends State<SignupThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.orange),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                  height: 301.63,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/image/Group 7037.png')),
              const Row(
                children: [
                  Text(
                    'Enter verification code',
                    style: TextStyle(
                        color: Color.fromRGBO(127, 83, 29, 10),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                 Text(
                    'We have send SMS to:\n046 XXX XX XX',
                    style: smallParagraph(),
                  ),
                ],
              ),
              const SizedBox(
                height: 65,
              ),
             
             Image.asset('assets/image/Group 7036.png'),
             
              const SizedBox(
                height: 65,
              ),
              SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignInPage()));
                  },
                  child: Text(
                    'Next',
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange)),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
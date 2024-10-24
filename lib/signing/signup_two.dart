import 'package:flutter/material.dart';
import 'package:uidesign/additional/colors.dart';
import 'package:uidesign/signing/signup_three.dart';

class SignupTwo extends StatefulWidget {
  const SignupTwo({super.key});

  @override
  State<SignupTwo> createState() => _SignupTwoState();
}

class _SignupTwoState extends State<SignupTwo> {
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
                    'Enter the password',
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
                    'For the security & safety please choose a\npassword',
                    style: smallParagraph(),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.orange,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    color: Colors.orange,
                  ),
                  label: Text('Password'),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.orange,
                  ),
                  label: Text('Confirm Password'),
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    color: Colors.orange,
                  ),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignupThree()));
                  },
                  child: Text(
                    'Next',
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

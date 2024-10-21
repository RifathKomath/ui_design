import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:uidesign/additional/colors.dart';
import 'package:uidesign/home_page.dart';
import 'package:uidesign/signing/signup_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                'Sign In',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                  height: 301.63,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/image/Group 7040.png')),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Enter your phone number and \npassoword to access your account',
                    style: smallParagraph(),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const IntlPhoneField(
                decoration: InputDecoration(
                    label: Text('Phone number'), border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Confirm Password'),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Color.fromRGBO(127, 83, 29, 10),
                  ),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget password',
                    style: TextStyle(color: Colors.orange),
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {
                   Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomePage()), (route) => false);
                  },
                  child: Text(
                    'Sign In',
                    style: const TextStyle(color: Colors.white),
                  ),
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.orange)),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''Didn't have an account?''',
                    style: smallParagraph(),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => SignUp()),(route) => false);
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.orange, fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

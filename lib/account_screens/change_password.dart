import 'package:flutter/material.dart';
import 'package:uidesign/signing/sign_in_page.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: AppBar(
            iconTheme: const IconThemeData(color: Colors.orange),
            backgroundColor: Colors.white,
            bottom: const PreferredSize(
                preferredSize: Size.fromHeight(120),
                child: Text(
                  'Change Password',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange),
                )),
          )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.orange,
                  ),
                  label: const Text('Old Password'),
                  suffixIcon: const Icon(
                    Icons.visibility_outlined,
                    color: Colors.orange,
                  ),
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.orange,
                  ),
                  label: const Text('New Password'),
                  suffixIcon: const Icon(
                    Icons.visibility_outlined,
                    color: Colors.orange,
                  ),
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                ),
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.orange,
                  ),
                  label: const Text('Confirm Password'),
                  suffixIcon: const Icon(
                    Icons.visibility_outlined,
                    color: Colors.orange,
                  ),
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                ),
                keyboardType: TextInputType.name,
              ),
              Spacer(),
              SizedBox(
                height: 50,
                width: 343,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Confirm',
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
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()),
                        (route) => false);
                  },
                  child: Text(
                    'Back To Sign In',
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
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/input_box.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  color: Color.fromARGB(255, 21, 15, 197),
                  fontSize: 45,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const InputField(
                hintText: "Enter Name",
                label: "Name",
              ),
              const SizedBox(
                height: 10,
              ),
              const InputField(
                hintText: "Enter Email",
                label: "Email",
              ),
              const SizedBox(
                height: 10,
              ),
              const InputField(
                hintText: "Enter Username",
                label: "Username",
              ),
              const SizedBox(
                height: 10,
              ),
              const InputField(
                hintText: "Enter Password",
                label: "password",
                obscureText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              Button(
                callback: (val) {
                  print("clicked");
                },
                primaryColor: const Color.fromARGB(255, 21, 15, 197),
                secondaryColor: Colors.white,
                text: "Sign Up",
              )
            ],
          ),
        ),
      ),
    );
  }
}

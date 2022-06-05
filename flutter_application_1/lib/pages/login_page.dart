import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/input_box.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  void printFunc(String str) {
    print("clicked $str");
  }

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
              "Welcome!",
              style: TextStyle(
                color: Color.fromARGB(255, 21, 15, 197),
                fontSize: 45,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 20),
            const InputField(
              label: "Username",
              hintText: "Enter Username",
            ),
            const SizedBox(height: 20),
            const InputField(
              label: "Password",
              hintText: "Enter Password",
              obscureText: true,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button(
                  text: "Login",
                  primaryColor: const Color.fromARGB(255, 21, 15, 197),
                  secondaryColor: Colors.white,
                  callback: (val) {
                    Navigator.pushNamed(context, "/");
                  },
                ),
                Button(
                  text: "Signup",
                  secondaryColor: const Color.fromARGB(255, 21, 15, 197),
                  primaryColor: Colors.white,
                  callback: (val) {
                    Navigator.pushNamed(context, "/signup");
                  },
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}

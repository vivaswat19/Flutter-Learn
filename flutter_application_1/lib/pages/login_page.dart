import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            TextFormField(
              initialValue: "",
              enableSuggestions: true,
              decoration: const InputDecoration(
                  hintText: "Enter Username",
                  label: Text(
                    "Username",
                    style: TextStyle(
                      color: Color.fromARGB(255, 21, 15, 197),
                    ),
                  )),
            ),
            const SizedBox(height: 20),
            TextFormField(
              initialValue: "",
              decoration: const InputDecoration(
                  hintText: "Enter password",
                  label: Text(
                    "Password",
                    style: TextStyle(
                      color: Color.fromARGB(255, 21, 15, 197),
                    ),
                  )),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(120, 50),
                    primary: Color.fromARGB(255, 21, 15, 197),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text("Login"),
                ),
                ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(120, 50),
                    onPrimary: Color.fromARGB(255, 21, 15, 197),
                    primary: Colors.white,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text("Sign Up"),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}

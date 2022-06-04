import 'package:flutter/material.dart';

import '../utils/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(color: Colors.lightBlue[400], fontSize: 40),
            ),
            ElevatedButton(
              onPressed: (() {}),
              child: const Text(
                "Login",
              ),
            )
          ],
        ),
      ),
    );
  }
}

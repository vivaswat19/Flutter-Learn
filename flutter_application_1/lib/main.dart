import 'package:flutter/material.dart';
import '/pages/home_page.dart';
import '/pages/signup_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/login_page.dart';
import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      // debugShowMaterialGrid: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.red,
          ),
          textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme)),
      initialRoute: Routes.login,
      routes: {
        Routes.home: (context) => const HomePage(),
        Routes.login: (context) => const LoginPage(),
        Routes.signup: (context) => const SignUpPage(),
      },
    );
  }
}

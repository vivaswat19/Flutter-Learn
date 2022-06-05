import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String? text;
  final Color? primaryColor;
  final Color? secondaryColor;
  // final Function cb;
  final void Function(String) callback;
  const Button({
    Key? key,
    this.text,
    this.primaryColor,
    this.secondaryColor,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback(text ?? "printing");
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(120, 50),
        primary: primaryColor ?? Colors.white,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(
        text ?? "",
        style: TextStyle(color: secondaryColor ?? Colors.indigo[900]),
      ),
    );
  }
}

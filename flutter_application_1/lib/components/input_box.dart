import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String? hintText;
  final String? label;
  final bool? obscureText;
  const InputField({
    Key? key,
    this.hintText,
    this.label,
    this.obscureText,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  String inputValue = "";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      child: TextFormField(
        initialValue: "",
        enableSuggestions: true,
        obscureText: widget.obscureText ?? false,
        onChanged: (value) {
          setState(() {
            inputValue = value;
          });
        },
        decoration: InputDecoration(
            hintText: widget.hintText ?? "",
            label: Text(
              widget.label ?? "",
              style: const TextStyle(
                color: Color.fromARGB(255, 21, 15, 197),
              ),
            )),
      ),
    );
  }
}

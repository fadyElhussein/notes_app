import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String textHint;
  final Function(String)? onFieldSubmitted;
  const CustomTextField({
    Key? key,
    required this.textHint,
    required this.onFieldSubmitted,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: Colors.orangeAccent,
      style: const TextStyle(color: Colors.orangeAccent),
      decoration: InputDecoration(
        label: Text(textHint),
        hintText: textHint,
        hintStyle: const TextStyle(
          color: Colors.orangeAccent,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.orangeAccent,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}

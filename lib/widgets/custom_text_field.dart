import 'package:flutter/material.dart';
import 'package:notes_app/const.dart';

class CustomTextField extends StatelessWidget {
  final String textHint;
  final int maxLines;
  final Function(String)? onFieldSubmitted;
  const CustomTextField({
    Key? key,
    required this.textHint,
    required this.onFieldSubmitted,
    this.maxLines = 1,
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
      maxLines: maxLines,
      cursorColor: const Color.fromARGB(234, 4, 198, 212),
      decoration: InputDecoration(
        hintText: textHint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        8,
      ),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}

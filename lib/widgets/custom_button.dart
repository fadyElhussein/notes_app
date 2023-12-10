// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notes_app/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(
            8,
          )),
      child: TextButton(
        onPressed: onPressed,
        child: const Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

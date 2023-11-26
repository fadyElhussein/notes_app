import 'package:flutter/material.dart';
import 'package:notes_app/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

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
        onPressed: () {},
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

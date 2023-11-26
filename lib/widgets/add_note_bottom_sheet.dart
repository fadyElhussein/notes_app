import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(
              textHint: 'Title',
              onFieldSubmitted: (p0) {},
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
              textHint: 'Description',
              maxLines: 5,
              onFieldSubmitted: (p0) {},
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

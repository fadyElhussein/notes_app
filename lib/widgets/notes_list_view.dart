import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_iteam.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const NoteIteam(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 16,
        child: Divider(
          height: 2,
          color: Colors.amber,
        ),
      ),
      itemCount: 10,
    );
  }
}

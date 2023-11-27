import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/view/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      routes: {
        NotesView.id: (context) => const NotesView(),
      },
      initialRoute: NotesView.id,
    );
  }
}

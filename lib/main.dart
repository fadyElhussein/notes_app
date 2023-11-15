import 'package:flutter/material.dart';
import 'package:notes_app/view/notes_screen.dart';

void main() {
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
      ),
      routes: {
        NotesView.id: (context) => const NotesView(),
      },
      initialRoute: NotesView.id,
      home: Container(),
    );
  }
}

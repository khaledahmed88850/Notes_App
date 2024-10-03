import 'package:flutter/material.dart';
import 'package:notes_app/pages/home_page.dart';

void main ()
{
  runApp(const NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      routes: {
        HomePage.id : (context) => const HomePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
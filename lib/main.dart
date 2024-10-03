import 'package:flutter/material.dart';
import 'package:notes_app/pages/home_page.dart';

void main ()
{
  runApp(NotesApp());
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id : (context) => HomePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
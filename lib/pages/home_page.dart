import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'Home Page';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {} , child: const Icon(Icons.add),),
      body: NotesView(),
    );
  }
}

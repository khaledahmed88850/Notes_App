import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteviewBody extends StatelessWidget {
  const EditNoteviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
          children: [
             SizedBox(height: 40,),
            CustomAppBar(title: 'Edit Note', icon: Icons.check,),
             SizedBox(height: 40,),
             CustomTextField(hint: 'Edit'),
             SizedBox(height: 16,),
             CustomTextField(hint: 'Content' , maxlines: 8,),
          ],
        ),
    );
  }
}
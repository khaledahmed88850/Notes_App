import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteviewBody extends StatefulWidget {
  const EditNoteviewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteviewBody> createState() => _EditNoteviewBodyState();
}

class _EditNoteviewBodyState extends State<EditNoteviewBody> {
   String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 40,
          ),
          CustomTextField(
            onChanged: (value)
            {
              title = value;
            },
            hint: widget.note.title),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value)
            {
              content = value;
            },
            hint: widget.note.subTitle,
            maxlines: 8,
          ),
        ],
      ),
    );
  }
}

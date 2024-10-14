import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  fetchAllNotes() {
    emit(NotesCubitloading());
    try {
  var noteBox = Hive.box<NoteModel>(kNotesBox);
  var notes = noteBox.values.toList();
  emit(NotesCubitSuccsess(notes));
} catch (e) {
  emit(NotesCubitFailure(errorMessage: e.toString())); 
}
  }
}

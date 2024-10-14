part of 'notes_cubit_cubit.dart';

@immutable
abstract class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitloading extends NotesCubitState {}

final class NotesCubitSuccsess extends NotesCubitState {
  final List<NoteModel> notes;

  NotesCubitSuccsess(this.notes);
}

final class NotesCubitFailure extends NotesCubitState {
  final String? errorMessage;
  NotesCubitFailure({this.errorMessage});
}

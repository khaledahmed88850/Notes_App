import 'package:bloc/bloc.dart';
part 'add_note_state.dart';

class NoteCubit extends Cubit<AddNoteState> {
  NoteCubit() : super(AddNoteInitial());
}

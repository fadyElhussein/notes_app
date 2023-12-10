import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/add_note_cubit/add_note_state.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/model/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote({required NoteModel noteModel}) async {
    emit(AddNoteLoading());
    try {
      Box<NoteModel> notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(noteModel);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(
        AddNoteFailure(errMessage: e.toString()),
      );
    }
  }
}

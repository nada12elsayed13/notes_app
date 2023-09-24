import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import '../../widgets/constes.dart';
part 'readnotes_state.dart';

class ReadnotesCubit extends Cubit<ReadnotesState> {
  ReadnotesCubit() : super(ReadnotesInitial());

  fetchAllNotes()async {
    emit(ReadnotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel>notes=  noteBox.values.toList();
      emit(ReadnotesSuccess(notes));
    } catch (e) {
      emit(ReadnotesFauiler(e.toString()));
    }
  }
}

part of 'readnotes_cubit.dart';

@immutable
sealed class ReadnotesState {}

final class ReadnotesInitial extends ReadnotesState {}

final class ReadnotesLoading extends ReadnotesState {}

final class ReadnotesSuccess extends ReadnotesState {
  final List<NoteModel> notes;

  ReadnotesSuccess(this.notes);
}

final class ReadnotesFauiler extends ReadnotesState {
  final String errorMessage;

  ReadnotesFauiler(this.errorMessage);
}

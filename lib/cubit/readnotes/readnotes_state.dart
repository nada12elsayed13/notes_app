part of 'readnotes_cubit.dart';

@immutable
sealed class ReadnotesState {}

final class ReadnotesInitial extends ReadnotesState {}
final class ReadnotesSuccess extends ReadnotesState {}
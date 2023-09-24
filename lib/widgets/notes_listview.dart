import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/readnotes/readnotes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'cusyom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadnotesCubit, ReadnotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<ReadnotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: CustomNoteItem(),
              );
            },
          ),
        );
      },
    );
  }
}

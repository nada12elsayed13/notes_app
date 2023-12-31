import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/cubit/add_note/add_note_cubit.dart';
import 'package:notes_app/cubit/readnotes/readnotes_cubit.dart';
import 'package:notes_app/widgets/showSnakBar.dart';

import 'add_notes.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFauiler) {}
          if (state is AddNoteSuccess) {
            BlocProvider.of<ReadnotesCubit>(context).fetchAllNotes();
            showSnakbar(context, ' Operation Add is Success.');
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: AddNotes()),
            ),
          );
        },
      ),
    );
  }
}

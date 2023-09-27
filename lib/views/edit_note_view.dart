// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors.dart';
import 'package:notes_app/widgets/edite_note_view_body.dart';

import '../widgets/constes.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}


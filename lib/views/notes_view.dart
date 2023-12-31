import 'package:flutter/material.dart';
import '../widgets/AddNotesBottomSheet.dart';
import '../widgets/Custom_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteBottemSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const CustomBody());
  }
}

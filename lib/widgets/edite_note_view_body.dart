import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customText_field.dart';
import 'package:notes_app/widgets/custom_abbpar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAbbpar(title: 'Edit Note', icon: Icons.check),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}

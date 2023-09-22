import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customText_field.dart';

import 'custombutton.dart';

class AddNoteBottemSheet extends StatelessWidget {
  const AddNoteBottemSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Titel',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxlines: 5,
          ),
          SizedBox(
            height: 32,
          ),
          CustomBotton(),
          SizedBox(height: 16,)
        ],
      ),
    );
  }
}

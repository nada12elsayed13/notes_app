import 'package:flutter/material.dart';

import 'custom_abbpar.dart';
import 'notes_listview.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAbbpar(),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

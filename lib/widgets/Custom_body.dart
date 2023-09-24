import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/readnotes/readnotes_cubit.dart';

import 'custom_abbpar.dart';
import 'notes_listview.dart';

class CustomBody extends StatefulWidget {
  const CustomBody({super.key});

  @override
  State<CustomBody> createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ReadnotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAbbpar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

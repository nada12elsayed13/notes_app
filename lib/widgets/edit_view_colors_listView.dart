import 'package:flutter/material.dart';

import '../models/note_model.dart';
import 'colors.dart';
import 'constes.dart';

class EditViewColor extends StatefulWidget {
  const EditViewColor({
    Key? key,
    required this.note,
  }) : super(key: key);
  final NoteModel note;

  @override
  State<EditViewColor> createState() => _EditViewColorState();
}

class _EditViewColorState extends State<EditViewColor> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = color.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: color.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = color[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: color[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}

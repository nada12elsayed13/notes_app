// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notes_app/widgets/constes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
      this.maxlines=1,
  }) : super(key: key);

  final String hint;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxlines,
      decoration: InputDecoration(
          border: inputBorder(),
          enabledBorder: inputBorder(),
          focusedBorder: inputBorder(kPrimaryColor),
          hintText: hint,
          hintStyle: const TextStyle(color: kPrimaryColor)),
    );
  }

  OutlineInputBorder inputBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}

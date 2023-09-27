// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notes_app/widgets/constes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    this.maxlines = 1,
    this.onSaved,
    this.onChanged,
  }) : super(key: key);

  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This Field is required';
        } else {
          return null;
        }
      },
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

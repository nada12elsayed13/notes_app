import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constes.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: inputBorder(),
        enabledBorder: inputBorder(),
        focusedBorder: inputBorder(kPrimaryColor),
        hintText: 'Title',
        hintStyle:const TextStyle(color: kPrimaryColor)
      ),
    );
  }

  OutlineInputBorder inputBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color:color?? Colors.white),
      );
  }
}

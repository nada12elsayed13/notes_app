// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'Custom_iconSearch.dart';

class CustomAbbpar extends StatelessWidget {
  const CustomAbbpar({
    Key? key,
    required this.title,
    required this.icon,
    this.onPressed,
  }) : super(key: key);
  final String title;
  final IconData icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CustomIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}

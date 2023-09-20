import 'package:flutter/material.dart';

import 'Custom_iconSearch.dart';

class CustomAbbpar extends StatelessWidget {
  const CustomAbbpar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row
    (
      children: [
        Text('Notes',style: TextStyle(fontSize: 28),),
        Spacer(),
        CustomIconSearch(),

      ],
    );
  }
}

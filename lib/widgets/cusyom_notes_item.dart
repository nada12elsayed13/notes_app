import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:const Color(0XFFFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title:const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'Build your careet with nada elsayed',
                style: TextStyle(
                    color: Colors.black.withOpacity(.5), fontSize: 18),
              ),
            ),
            trailing: IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                size: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May9,2023',
              style:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

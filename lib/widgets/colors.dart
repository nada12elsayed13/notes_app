// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    Key? key,
    required this.isActive,
    required this.color,
  }) : super(key: key);
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        :  CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColosListView extends StatefulWidget {
  const ColosListView({super.key});

  @override
  State<ColosListView> createState() => _ColosListViewState();
}

class _ColosListViewState extends State<ColosListView> {
  int currentIndex = 0;
  List<Color> color = const [
    Color(0XFFAC3931),
    Color(0XFFE5D352),
    Color(0XFFD9E76C),
    Color(0XFF537D8D),
    Color(0XFF482C3D),
  ];
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

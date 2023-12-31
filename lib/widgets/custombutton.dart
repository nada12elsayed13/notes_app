// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'constes.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    Key? key,
    this.onTap,
    this.isloading=false,
  }) : super(key: key);

  final void Function()? onTap;
  final bool isloading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child:  Center(
          child:isloading?const SizedBox(
            height: 24,
            width: 24,
            child:  CircularProgressIndicator(
              color: Colors.black,
              
            ),
          ):const Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';

class custom_button extends StatelessWidget {
  const custom_button({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorsConstants.PrimaryColor),
      child: Text(text, style: TextStyle(color: ColorsConstants.white)),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:foodapp/utils/constants/colors_constants.dart';

class IngridientSection extends StatelessWidget {
  String image;
  String name;
  String gram;
  bool havearrow;
  IngridientSection({
    required this.gram,
    required this.image,
    required this.name,
    this.havearrow = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      height: 76,
      width: 335,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorsConstants.greyshade),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(image))),
          ),
          SizedBox(
            width: 16,
          ),
          Text(name),
          Spacer(),
          Text(gram),
          havearrow
              ? Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(Icons.arrow_forward_outlined),
                )
              : SizedBox()
        ],
      ),
    );
  }
}

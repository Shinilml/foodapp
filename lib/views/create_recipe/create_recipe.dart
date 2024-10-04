import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class CreateRecipe extends StatelessWidget {
  const CreateRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create recipe",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 29),
            ),
            SizedBox(
              height: 24,
            ),
            // Stack(
            //   children: [
            //     Container(
            //       height: 200,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           image: DecorationImage(
            //               image: NetworkImage(
            //                   "https://images.pexels.com/photos/1410236/pexels-photo-1410236.jpeg?auto=compress&cs=tinysrgb&w=400"),
            //               fit: BoxFit.cover)),
            //       child: Column(
            //         children: [
            //           Positioned(
            //             left: 8,
            //             top: 8,
            //             child: CircleAvatar(
            //               child: Icon(HugeIcons.strokeRoundedEdit01),
            //             ),
            //           ),
            //           Positioned(
            //             left: 0,
            //             right: 0,
            //             bottom: 0,
            //             top: 0,
            //             child: CircleAvatar(
            //               child: Icon(Icons.play_arrow_rounded),
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/1410236/pexels-photo-1410236.jpeg?auto=compress&cs=tinysrgb&w=400"),
                        fit: BoxFit.cover),
                  ),
                  child: Center(
                      child: CircleAvatar(
                    radius: 24,
                    // backgroundColor: ColorConstands.blackShade.withOpacity(.3),
                    child: Icon(
                      Icons.play_arrow,
                      // color: ColorConstands.mainWhite,
                    ),
                  )),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: CircleAvatar(
                    radius: 16,
                    // backgroundColor: ColorConstands.mainWhite,
                    child: Icon(
                      Icons.draw_outlined,
                      // color: ColorConstands.primaryColor,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

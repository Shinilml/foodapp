import 'package:flutter/material.dart';
import 'package:foodapp/dummy_db.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';
import 'package:foodapp/views/global_widgets/custom_button.dart';
import 'package:foodapp/views/global_widgets/custom_card.dart';

class RecipeDetails extends StatelessWidget {
  String title;
  String image;
  String rating;
  RecipeDetails(
      {super.key,
      required this.image,
      required this.title,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.more_vert)],
      ),
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
              child: Center(
                child: CircleAvatar(
                  radius: 24,
                  child: Icon(Icons.play_arrow),
                ),
              ),
            ),
            Row(
              children: [
                Icon(Icons.star),
                Text(
                  rating,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text("(300 Reviews)")
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                ),
                Spacer(),
                custom_button(
                  text: "follow",
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(13.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Incredients",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text("5 items")
                ],
              ),
            ),
            SizedBox(
              height: 900,
              child: ListView.separated(
                padding: EdgeInsets.all(8),
                separatorBuilder: (context, index) => SizedBox(
                  height: 16,
                ),
                shrinkWrap: false,
                itemCount: Details.IngridientList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => IngridientSection(
                  gram: Details.IngridientList[index]["gram"],
                  image: Details.IngridientList[index]["image"],
                  name: Details.IngridientList[index]["name"],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

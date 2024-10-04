import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/dummy_db.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';
import 'package:foodapp/views/customvideocard/customvideocard.dart';
import 'package:foodapp/views/homescreen/widgets/popularcategorycard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // section 1
            titlesection(),
            // section 2
            trendingnowsection(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Popular Category",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                DefaultTabController(
                  length: 5,
                  child:
                      TabBar(dragStartBehavior: DragStartBehavior.start, tabs: [
                    Tab(
                      child: Text("Salad"),
                    ),
                    Tab(
                      child: Text("Breakfast"),
                    ),
                    Tab(
                      child: Text("Appetizer"),
                    ),
                    Tab(
                      child: Text("Noodle"),
                    ),
                    Tab(
                      child: Text("Lunch"),
                    )
                  ]),
                ),
                SizedBox(
                  height: 233,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Popularcategorycard(
                            title: dummypc.popular[index]["title"],
                            Duration: dummypc.popular[index]["duration"],
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 8,
                          ),
                      itemCount: 5),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding trendingnowsection() {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Trending Now 🔥",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: ColorsConstants.PrimaryColor),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward,
                color: ColorsConstants.PrimaryColor,
              ),
              SizedBox(
                width: 8,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 254,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => customvideocard(
                      rating: DummyDb.trendingnowlist[index]["rating"],
                      Profileurl: DummyDb.trendingnowlist[index]
                          ["profileImage"],
                      imageUrl: DummyDb.trendingnowlist[index]["imageurl"],
                      title: DummyDb.trendingnowlist[index]["title"],
                      Duration: DummyDb.trendingnowlist[index]["duration"],
                      Username: DummyDb.trendingnowlist[index]["username"],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 16,
                    ),
                itemCount: DummyDb.trendingnowlist.length),
          )
        ],
      ),
    );
  }

  Column titlesection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Text(
            "Find best recipes\nfor cooking",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search Recipe",
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorsConstants.grey,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 20))),
          ),
        )
      ],
    );
  }
}

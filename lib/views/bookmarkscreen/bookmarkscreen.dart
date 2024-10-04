import 'package:flutter/material.dart';
import 'package:foodapp/dummy_db.dart';
import 'package:foodapp/views/customvideocard/customvideocard.dart';
import 'package:foodapp/views/recipe_details/recipe_details.dart';

class Bookmarkscreen extends StatefulWidget {
  const Bookmarkscreen({super.key});

  @override
  State<Bookmarkscreen> createState() => _BookmarkscreenState();
}

class _BookmarkscreenState extends State<Bookmarkscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Saved Items",
              style: TextStyle(color: Colors.black),
            ),
            bottom: TabBar(tabs: [
              Tab(
                child: Text("Salad"),
              ),
              Tab(
                child: Text("Breakfast"),
              ),
            ]),
          ),
          body: ListView.separated(
              padding: EdgeInsetsDirectional.symmetric(vertical: 24),
              itemBuilder: (context, index) => customvideocard(
                    oncardTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeDetails(
                              title: DummyDb.trendingnowlist[index]["title"],
                              image: DummyDb.trendingnowlist[index]["imageurl"],
                              rating: DummyDb.trendingnowlist[index]["rating"],
                            ),
                          ));
                    },
                    rating: DummyDb.trendingnowlist[index]["rating"],
                    Profileurl: DummyDb.trendingnowlist[index]["profileImage"],
                    imageUrl: DummyDb.trendingnowlist[index]["imageurl"],
                    title: DummyDb.trendingnowlist[index]["title"],
                    Duration: DummyDb.trendingnowlist[index]["duration"],
                    Username: DummyDb.trendingnowlist[index]["username"],
                    width: double.infinity,
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: 10)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';
import 'package:foodapp/views/bookmarkscreen/bookmarkscreen.dart';
import 'package:foodapp/views/create_recipe/create_recipe.dart';
import 'package:foodapp/views/homescreen/homescreen.dart';
import 'package:foodapp/views/profile_screen/profile_screen.dart';

class BottomnavbarScreen extends StatefulWidget {
  const BottomnavbarScreen({super.key});

  @override
  State<BottomnavbarScreen> createState() => _BottomnavbarScreenState();
}

class _BottomnavbarScreenState extends State<BottomnavbarScreen> {
  int selectedTab = 0;
  List screen = [
    HomeScreen(),
    Bookmarkscreen(),
    Container(
      color: Colors.blue,
    ),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        backgroundColor: ColorsConstants.PrimaryColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateRecipe(),
              ));
        },
        child: Icon(
          Icons.add,
          color: ColorsConstants.white,
        ),
      ),
      body: screen[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (value) {
            selectedTab = value;
            setState(() {});
          },
          selectedItemColor: ColorsConstants.PrimaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ""),
          ]),
    );
  }
}

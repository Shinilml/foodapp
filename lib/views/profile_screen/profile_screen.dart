import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsetsDirectional.symmetric(
                      vertical: 8, horizontal: 16),
                  height: 36,
                  width: 107,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorsConstants.PrimaryColor)),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorsConstants.PrimaryColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

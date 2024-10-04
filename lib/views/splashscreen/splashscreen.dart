import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';
import 'package:foodapp/views/onboard/onboard.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Onboard(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstants.PrimaryColor,
      body: Center(
        child: Image.asset(
            height: 200, "assets/images/25647166_6879295-removebg-preview.png"),
      ),
    );
  }
}

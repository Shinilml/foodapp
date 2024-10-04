// import 'package:flutter/material.dart';
// import 'package:foodapp/utils/constants/image_constants.dart';

// class Onboard extends StatelessWidget {
//   const Onboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage(ImageConstants.ONBOARD_IMAGE_BG))),
//           ),
//           Container(
//             padding: EdgeInsetsDirectional.symmetric(horizontal: 64),
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     colors: [Colors.transparent, Colors.black],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter)),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Let's Cooking",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: 56,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants/colors_constants.dart';
import 'package:foodapp/utils/constants/image_constants.dart';
import 'package:foodapp/views/bottomNavigation/bottomnavigation.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _StratScreenState();
}

class _StratScreenState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            _buildBackgroundImage(),
            _buildGradientSections(),
            _buildHeader()
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Positioned(
      top: 13,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: ColorsConstants.white,
          ),
          SizedBox(
            width: 10,
          ),
          // Text(
          //   " 60k+ Premium recipes",
          //   style: TextStyle(color: ColorConstants.white),
          // )
          RichText(
              text: TextSpan(
                  text: "60k+ ",
                  style: TextStyle(
                      color: ColorsConstants.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                    text: " Premium recipes",
                    style: TextStyle(
                        color: ColorsConstants.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal))
              ]))
        ],
      ),
    );
  }

  Widget _buildGradientSections() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 64),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let's Cooking",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorsConstants.white,
                    fontSize: 56,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Find best recipes for cooking",
                style: TextStyle(
                    color: ColorsConstants.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomnavbarScreen(),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  decoration: BoxDecoration(
                      color: ColorsConstants.PrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Start Cooking",
                        style: TextStyle(
                            fontSize: 15, color: ColorsConstants.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: ColorsConstants.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageConstants.ONBOARD_IMAGE_BG),
              fit: BoxFit.cover)),
    );
  }
}

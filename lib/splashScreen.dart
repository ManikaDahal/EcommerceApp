import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/colorUtilis.dart' as colors;
import 'package:shopping_app/core/utils/routeConst.dart';
import 'package:shopping_app/core/utils/routeGenerator.dart';
import 'package:shopping_app/core/utils/stringConst.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  // void initState(){
  //   super.initState();
  //     Future.delayed(const Duration(milliseconds: 3));
  //     RouteGenerator.navigateToPage(context, Routes.onboardingPageRoute);   

  // }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset("images/assets/splashScreenImg.png",),
             Center(
            child: 
            Text(appName,style:TextStyle(
                color: colors.secondaryColor,
                fontSize: 40,
              ),),
          )
        ],
      ),
      
    );
  }
}
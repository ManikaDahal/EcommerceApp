import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/routeConst.dart';
import 'package:shopping_app/core/utils/routeGenerator.dart';
import 'package:shopping_app/core/utils/stringConst.dart';
import 'package:shopping_app/widgets/onboardingCard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardingpage extends StatefulWidget {
  const Onboardingpage({super.key});

  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final onboardingPages = [
      Onboardingcard(
        image: onboardingImage1Path,
        title: welcomeStr,
        description: description1Str,
        buttonText: nextStr,
        onPressed: () {
          _pageController.animateToPage(
            1,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
          );
        },
      ),
      Onboardingcard(
        image: onboardingImage2Path,
        title: ShopWithusStr,
        description: description2Str,
        buttonText: nextStr,
        onPressed: () {
          _pageController.animateToPage(
            2,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
          );
        },
      ),
      Onboardingcard(
        image: onboardingImage3Path,
        title: discountAvailableStr,
        description: description3Str,
        buttonText: doneStr,
        onPressed: () {
          RouteGenerator.navigateToPage(
            context,
            Routes.signupPageRoute,
          );
        },
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: onboardingPages,
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: onboardingPages.length,
              onDotClicked: (index) {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

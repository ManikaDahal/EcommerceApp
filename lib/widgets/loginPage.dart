import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/colorUtilis.dart';
import 'package:shopping_app/core/utils/routeConst.dart';
import 'package:shopping_app/core/utils/routeGenerator.dart';
import 'package:shopping_app/core/utils/stringConst.dart';
import 'package:shopping_app/widgets/customElevatedButton.dart';
import 'package:shopping_app/widgets/customInkwell.dart';
import 'package:shopping_app/widgets/customText.dart';
import 'package:shopping_app/widgets/customTextformfield.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool visible = false;
  bool rememberMe = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: whiteColor,
                    child: IconButton(
                      onPressed: () {
                        RouteGenerator.navigateToPage(
                          context,
                          Routes.signupPageRoute,
                        );
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),

                  SizedBox(height: 20),

                  Center(
                    child: CustomText(
                      data: welcomeBackStr,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomText(
                    data: emailAddressStr,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  CustomTextformfield(
                    controller: _emailAddressController,
                    hintText: emailAddressPlaceStr,
                    validator: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return validateEmailAddressStr;
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  CustomText(
                    data: passwordStr,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  CustomTextformfield(
                    controller: _passwordController,
                    hintText: passwordPlaceStr,
                    validator: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return validatePasswordStr;
                      }
                      return null;
                    },
                    obscureText: visible ? true : false,
                    suffixIcon: IconButton(
                      color: primaryColor,
                      onPressed: () {
                        setState(() {
                          visible = !visible;
                        });
                      },
                      icon: visible
                          ? Icon(Icons.visibility_off_outlined)
                          : Icon(Icons.visibility_outlined),
                    ),
                  ),

                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (bool? value) {
                          setState(() {
                            rememberMe = value! ? true : false;
                          });
                        },
                      ),
                      CustomText(
                        data: rememberMeStr,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      Spacer(),
                      CustomInkwell(
                        onTap: () {
                          RouteGenerator.navigateToPage(
                            context,
                            Routes.forgotpasswordRoute,
                          );
                        },
                        child: CustomText(
                          data: forgetPasswordStr,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  CustomElevatedButton(
                    onPressed: () {
                      //  RouteGenerator.navigateToPageWithoutStack(context, Routes.buttomNavbarRoute);
                    },
                    child: CustomText(data: loginStr, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      Text("Or"),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomElevatedButton(
                        onPressed: () {},
                        width: MediaQuery.of(context).size.width * 0.25,
                        backgroundColor: Colors.white,
                        child: Image.asset(googleLogoPath),
                      ),
                      CustomElevatedButton(
                        onPressed: () {},
                        width: MediaQuery.of(context).size.width * 0.25,
                        backgroundColor: Colors.white,
                        child: Image.asset(facebookLogoPath, height: 40),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(data: dontHaveAccountStr ),
                      CustomInkwell(
                        child: CustomText(
                          data: registerStr,
                          color: Colors.red,
                        ),
                        onTap: () {
                          RouteGenerator.navigateToPage(
                            context,
                            Routes.signupPageRoute,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

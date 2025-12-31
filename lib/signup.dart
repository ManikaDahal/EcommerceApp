import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/colorUtilis.dart';
import 'package:shopping_app/core/utils/displaySnackbar.dart';
import 'package:shopping_app/core/utils/routeConst.dart';
import 'package:shopping_app/core/utils/routeGenerator.dart';
import 'package:shopping_app/core/utils/stringConst.dart';
import 'package:shopping_app/widgets/customElevatedButton.dart';
import 'package:shopping_app/widgets/customInkwell.dart';
import 'package:shopping_app/widgets/customText.dart';
import 'package:shopping_app/widgets/customTextformfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool loader = false;
  bool visible = false;
  bool isTermsAndConditionedAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          ui(),
          // loader ? Loader.backdropFilter(context) : const SizedBox(),
        ],
      ),
    );
  }

  Widget ui() => SafeArea(
    child: Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               CircleAvatar(
                backgroundColor: whiteColor,
                 child: IconButton(
                   onPressed: () {
                     RouteGenerator.navigateToPage(
                       context,
                       Routes.onboardingPageRoute,
                     );
                   },
                   icon: Icon(Icons.close),
                 ),
              ),
              

              SizedBox(height: 20),
              Center(
                child: CustomText(
                  data: createAccountStr,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              CustomText(
                data: nameStr,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              CustomTextformfield(
                controller: _nameController,
                hintText: namePlaceStr,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return validateNamestr;
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomText(
                data: emailAddressStr,
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
              SizedBox(height: 10),
              CustomText(
                data: passwordStr,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              CustomTextformfield(
                obscureText: visible ? false : true,
                controller: _passwordController,
                hintText: passwordPlaceStr,
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return validatePasswordStr;
                  }
                  return null;
                },
                suffixIcon: IconButton(
                  color: primaryColor,
                  onPressed: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                  icon: visible
                      ? Icon(Icons.visibility_outlined)
                      : Icon(Icons.visibility_off_outlined),
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Checkbox(
                    value: isTermsAndConditionedAgreed,
                    onChanged: (bool? value) {
                      setState(() {
                        isTermsAndConditionedAgreed = value! ? true : false;
                      });
                    },
                  ),
                  CustomText(data: agreeTermsAndConditionStr),
                  Spacer(),
                ],
              ),
              SizedBox(height: 15),
              CustomElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (!isTermsAndConditionedAgreed) {
                      DisplaySnackbar.show(
                        context,
                        notAgreedToTermsAndConditionsMessage,
                      );
                    }
                    Future.delayed(const Duration(seconds: 2), () async {
                      var data = {
                        "name": _nameController.text.trim(),
                        "email": _emailAddressController.text.trim(),
                        "password": _passwordController.text.trim(),
                      };
                      try {
                        // FirebaseFirestore firestore =
                        //     FirebaseFirestore.instance;
                        // await firestore.collection("Register").add(data);
                        // setState(() {
                        //   loader = false;
                        // });
                        // RouteGenerator.navigateToPage(
                        //   context,
                        //   Routes.loginPageRoute,
                        // );
                        // DisplaySnackbar.show(context, "Successfully Registered");
                      } catch (e) {
                        setState(() {
                          loader = false;
                        });
                        DisplaySnackbar.show(context, failedRegisterStr);
                      }
                    });
                  }
                },
                child: Text(registerStr, style: TextStyle(color: Colors.white)),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomElevatedButton(
                    onPressed: () {},
                    width: MediaQuery.of(context).size.width * 0.25,
                    backgroundColor: Colors.white,
                    child: Image.asset(googleLogoPath),
                  ),
                  SizedBox(width: 30),
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
                children: [
                  Spacer(),
                  CustomText(data: alreadyhaveanAccountStr),
                  CustomInkwell(
                    child: CustomText(data: loginStr, color: Colors.red),
                    onTap: () {
                      RouteGenerator.navigateToPage(
                        context,
                        Routes.loginPageRoute,
                      );
                    },
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

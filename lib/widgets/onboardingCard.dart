import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/colorUtilis.dart';
import 'package:shopping_app/widgets/customElevatedButton.dart';

class Onboardingcard extends StatelessWidget {
  final String image, title, description,buttonText;
  final Function onPressed;

  const Onboardingcard({super.key, required this.image,required this.title,required this.description,required this.buttonText,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(image, fit: BoxFit.contain,height: 400,width: 500,),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                 title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30,color: secondaryColor),
                  
                ),
                SizedBox(
                  height: 30,
                ),
              
                Text(description,style: TextStyle(fontSize: 25,color: secondaryColor),),
              SizedBox(
                  height: 30,
                ),
                CustomElevatedButton(onPressed: ()=>onPressed(), child: Text(buttonText))
                 ],

            ),
            
          ),
        ],
      ),
    );
  }
}

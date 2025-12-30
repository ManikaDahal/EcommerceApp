import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/customIcons.dart';

class CustomIconButton extends StatelessWidget {
  Function()? onPressed;
  Color? color;
  IconData? icon;
  CustomIconButton(
      {super.key, required this.onPressed, this.color,required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed:onPressed,
        icon: CustomIcons(icon: icon));
  }
}
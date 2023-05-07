import 'package:abstract_factory/comcrete_factory/concrete_factory.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.buttonType,
    required this.textColor,
    this.backgoundColor,
    this.borderColor,
    super.key,
  });
  final ButtonType buttonType;
  final Color? backgoundColor;
  final Color? borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ConcreteFactory().createButton(buttonType).createButton(
          textColor: textColor,
          backgoundColor: backgoundColor,
          borderColor: borderColor,
        );
  }
}

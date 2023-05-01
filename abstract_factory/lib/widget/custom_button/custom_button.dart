import 'package:abstract_factory/factory/button_factory.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.widgetFactory, super.key});
  final ButtonFactory widgetFactory;
  @override
  Widget build(BuildContext context) {
    return widgetFactory.createButton();
  }
}
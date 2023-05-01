import 'package:abstract_factory/concrete_factory/conrete_factory.dart';
import 'package:abstract_factory/widget/custom_button/custom_button.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              widgetFactory: ConcreteFactory(buttonType: ButtonType.outline),
            ),
            const SizedBox(height: 20),
            CustomButton(
              widgetFactory: ConcreteFactory(buttonType: ButtonType.fill),
            )
          ],
        ),
      ),
    );
  }
}

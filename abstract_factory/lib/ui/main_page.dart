import 'package:abstract_factory/comcrete_factory/concrete_factory.dart';
import 'package:abstract_factory/custom_button/custom_button.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomButton(
              buttonType: ButtonType.outline,
              textColor: Colors.green,
              borderColor: Colors.green,
            ),
            SizedBox(height: 20),
            CustomButton(
              buttonType: ButtonType.fill,
              textColor: Colors.white,
              backgoundColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}

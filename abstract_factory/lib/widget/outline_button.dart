import 'package:abstract_factory/abstract_product/abstract_button.dart';
import 'package:flutter/material.dart';

class OutlineButtonWidget implements AbstractButton {
  @override
  Widget createButton() {
    return SizedBox(
      width: 120,
      height: 60,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(
                color: Colors.red,
                width: 0.7,
              ),
            ),
          ),
        ),
        child: const Text(
          'Outline Button',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}

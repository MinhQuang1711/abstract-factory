import 'package:abstract_factory/factory/button_factory.dart';
import 'package:abstract_factory/widget/fill_button.dart';
import 'package:abstract_factory/widget/outline_button.dart';
import 'package:flutter/material.dart';

enum ButtonType { outline, fill }

class ConcreteFactory implements ButtonFactory {
  ButtonType buttonType;
  ConcreteFactory({required this.buttonType});
  @override
  Widget createButton() {
    switch (buttonType) {
      case ButtonType.outline:
        return FillButtonWidget().createButton();
      case ButtonType.fill:
        return OutlineButtonWidget().createButton();
    }
  }
}

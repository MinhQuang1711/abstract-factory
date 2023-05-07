import 'package:abstract_factory/abstract_factory/abstract_factory.dart';
import 'package:abstract_factory/abstract_product/abstract_product.dart';
import 'package:abstract_factory/widget_product/fill_button.dart';
import 'package:abstract_factory/widget_product/outline_button.dart';

enum ButtonType { fill, outline }

class ConcreteFactory implements AbstractFatory {
  @override
  AbstractProduct createButton(ButtonType buttonType) {
    switch (buttonType) {
      case ButtonType.fill:
        return FillButton();
      case ButtonType.outline:
        return OutlineButton();
    }
  }
}

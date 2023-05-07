import 'package:abstract_factory/abstract_product/abstract_product.dart';
import 'package:abstract_factory/base_widget/base_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class FillButton implements AbstractProduct {
  @override
  Widget createButton({
    required Color textColor,
     Color? backgoundColor,
     Color? borderColor,
  }) {
    return BaseButton(
      content: 'Fill Button',
      backgoundColor: backgoundColor,
      textColor: textColor,
    );
  }
}

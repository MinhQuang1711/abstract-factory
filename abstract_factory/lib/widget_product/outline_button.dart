import 'dart:ui';

import 'package:abstract_factory/abstract_product/abstract_product.dart';
import 'package:abstract_factory/base_widget/base_button.dart';
import 'package:flutter/src/widgets/framework.dart';

class OutlineButton implements AbstractProduct {
  @override
  Widget createButton(
      {required Color textColor, Color? backgoundColor, Color? borderColor}) {
    return BaseButton(
      content: 'Outline Button',
      borderColor: borderColor,
      textColor: textColor,
      backgoundColor: backgoundColor,
    );
  }
}

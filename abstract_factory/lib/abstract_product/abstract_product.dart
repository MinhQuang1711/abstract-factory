import 'package:flutter/material.dart';

abstract class AbstractProduct {
  Widget createButton({
    required Color textColor,
     Color ?backgoundColor,
     Color ?borderColor,
  });
}

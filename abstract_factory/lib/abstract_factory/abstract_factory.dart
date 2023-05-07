import 'package:abstract_factory/abstract_product/abstract_product.dart';
import 'package:abstract_factory/comcrete_factory/concrete_factory.dart';
import 'package:flutter/material.dart';

abstract class AbstractFatory {
  AbstractProduct createButton(ButtonType buttonType);
}

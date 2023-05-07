import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton(
      {required this.content,
      this.backgoundColor,
      this.borderColor,
      this.textColor,
      super.key});
  final Color? backgoundColor;
  final Color? borderColor;
  final Color? textColor;
  final String content;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(backgoundColor ?? Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: borderColor ?? Colors.white,
              ),
            ),
          ),
        ),
        child: Text(
          content,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}

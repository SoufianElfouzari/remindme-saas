import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color buttonColor;
  final Text buttonText;
  final BorderRadius buttonRadius;
  final double? buttonHeight;
  final VoidCallback? onPressed;
  final double? padding;

  const AppButton({
    super.key, 
    required this.buttonColor,
    required this.buttonRadius,
    required this.buttonText,
    this.buttonHeight,
    this.onPressed,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: buttonHeight,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: buttonRadius,
        ),
        child: Padding(
          padding: EdgeInsets.all(padding ?? 0),
          child: Center(child: buttonText),
        ),
      ),
    );
  }
}
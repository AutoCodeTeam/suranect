import 'package:flutter/material.dart';
import 'package:suranect/core/theme/app_colors.dart';

class SuraButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color buttonColor;
  final TextStyle? textStyle;
  final String text;

  const SuraButton({
    super.key,
    required this.onPressed,
    this.buttonColor = AppColors.neutral_30,
    this.textStyle,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(buttonColor),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            vertical: 15,
          ),
        ),
      ),
      child: Text(
        text,
        style: textStyle ?? Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:suranect/core/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color? colorText;
  final String text;
  final double? width, height;

  const AppButton({
    super.key,
    required this.onPressed,
    this.buttonColor = AppColors.neutral_30,
    this.colorText,
    required this.text, this.width, this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
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
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: colorText
          ),
        ),
      ),
    );
  }
}

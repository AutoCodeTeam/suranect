import 'package:flutter/material.dart';
import 'package:suranect/core/theme/app_colors.dart';

class AppTextField extends StatelessWidget {
  final bool readOnly;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final int? maxLength;
  final int? maxLines;
  final VoidCallback? onTap;
  final Function(String)? onChanged;

  const AppTextField({
    super.key,
    this.prefixIcon,
    this.contentPadding,
    required this.hintText,
    this.maxLength,
    this.maxLines = 1,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      maxLength: maxLength,
      readOnly: readOnly,
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: contentPadding,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: AppColors.neutral_50),
      ),
    );
  }
}

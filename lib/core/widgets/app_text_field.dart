import 'package:flutter/material.dart';
import 'package:suranect/core/theme/app_colors.dart';

class AppTextField extends StatelessWidget {
  final bool readOnly;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final String? initialValue;
  final String hintText;
  final int? maxLength;
  final int? maxLines;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final bool status;
  final String? error;
final TextEditingController? textEditingController;

  const AppTextField({
    super.key,
    this.error,
    this.prefixIcon,
    this.contentPadding,
    required this.hintText,
    this.maxLength,
    this.maxLines = 1,
    this.readOnly = false,
    this.onTap,
    this.onChanged, this.initialValue,
    this.status = false, this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      initialValue: initialValue,
      maxLines: maxLines,
      maxLength: maxLength,
      readOnly: readOnly,
      onTap: onTap,
      onChanged: onChanged,
      decoration: InputDecoration(
        error: status
            ? const SizedBox.shrink()
            : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            error ?? "",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.red,
            ),
          ),
        ),
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

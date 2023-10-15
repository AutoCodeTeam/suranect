import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/core/theme/app_colors.dart';

class AuthTextField extends StatelessWidget {
  final String icon;
  final String label;
  final bool obscureText;
  final bool isPassword;
  final Function(String) onChanged;
  final String? error;

  const AuthTextField({
    super.key,
    required this.icon,
    this.label = "Input here!",
    this.obscureText = false,
    required this.onChanged,
    this.isPassword = false,
    this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(16, 1, 16, 1),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          const SizedBox(width: 18),
          Expanded(
            child: TextFormField(
              maxLines: 1,
              obscureText: obscureText,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: label,
                hintStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: AppColors.neutral_40,
                    ),
                border: InputBorder.none,
                errorText: error,
              ),
            ),
          ),
          isPassword
              ? IconButton(
                  onPressed: () {},
                  icon: obscureText
                      ? SvgPicture.asset("assets/svg/visibility_ic.svg")
                      : SvgPicture.asset("assets/svg/visibility-0ff_ic.svg"),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

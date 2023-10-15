import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:suranect/core/theme/app_colors.dart';

class FormContainer extends StatelessWidget {
  final String icon;
  final String label;

  const FormContainer({
    super.key,
    required this.icon,
    this.label = "Input here!",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
              decoration: InputDecoration(
                  label: Text(
                    label,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: AppColors.neutral_40,
                        ),
                  ),
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}

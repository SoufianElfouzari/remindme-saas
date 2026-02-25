import 'package:flutter/material.dart';
import 'package:remindme/constants/theme/colors.dart';
import 'package:remindme/constants/theme/text_styles.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final bool? big;
  final TextEditingController controller;

  const AppTextField({
    super.key,
    required this.label,
    required this.controller,
    this.big,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.label),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          maxLines: big == true ? 2 : 1, // <— hier
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.background,
            hintStyle: TextStyle(color: AppColors.disabled),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: big == true ? 18 : 14, // optional: mehr Padding
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.border),
            ),
          ),
        ),
      ],
    );
  }
}
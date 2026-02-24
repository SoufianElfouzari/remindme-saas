import 'package:flutter/material.dart';
import 'package:remindme/constants/colors.dart';
import 'package:remindme/constants/text_styles.dart';
import 'package:remindme/models/navigation_item_model.dart';

class NavigationItem extends StatelessWidget {
  final NavigationItemModel item;
  final bool isActive;
  const NavigationItem({super.key, required this.item, this.isActive=false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        child: Row(
          children: [
            Icon(item.icon, color: isActive ? AppColors.primary : AppColors.disabled),
            const SizedBox(width: 25),
            Text( item.title, style: AppTextStyles.h3.copyWith(color: isActive ? AppColors.primary : AppColors.disabled)),
            const Spacer(),
            Container(
              width: 5,
              height: 30,
              decoration: BoxDecoration(
                color: isActive ? AppColors.primary : Colors.transparent,
                borderRadius: BorderRadius.circular(2.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
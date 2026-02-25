import 'package:flutter/material.dart';
import 'package:remindme/constants/ui/navigation_items.dart';
import 'package:remindme/widgets/common/navigation_item.dart';

class Sidebar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const Sidebar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: 275,
      height: screenHeight,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: const Placeholder(),
            ), //Todo: Replace with real logo

            const SizedBox(height: 75),

            Expanded(
              child: ListView.builder(
                itemCount: NavigationItems.items.length,
                itemBuilder: (context, index) {
                  final item = NavigationItems.items[index];

                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () => onItemSelected(index),
                      child: NavigationItem(
                        item: item,
                        isActive: selectedIndex == index,
                      ),
                    ),
                  );
                },
              ),
            ),

            //Todo: Help & Support Button
            //Todo: Logout Button
          ],
        ),
      ),
    );
  }
}
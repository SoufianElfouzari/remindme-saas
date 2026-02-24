import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 275,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
        child: const Column(
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Placeholder(),
            )
            //Todo: Navigation Items
            //Todo: Help & Support Button
            //Todo: Logout Button
          ],
        ),
      ),
    );
  }
}
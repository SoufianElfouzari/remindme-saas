import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //Todo: Logo
        SizedBox(
          height: 100,
          width: double.infinity,
          child: Placeholder(),
        )
        //Todo: Navigation Items
        //Todo: Help & Support Button
        //Todo: Logout Button
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:remindme/screens/dashboard_screen.dart';
import 'package:remindme/widgets/common/sidebar.dart';

class ShellPage extends StatelessWidget {
  const ShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        //Todo: Header
        children: [
          Row(
            children: [
              Sidebar(),
              //Todo: Page
              DashboardScreen(), //Todo: Replace Dashboard with real dynamic page
            ],
          ),
        ],
      ),
    );
  }
}

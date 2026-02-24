import 'package:flutter/material.dart';
import 'package:remindme/screens/dashboard_screen.dart';
import 'package:remindme/screens/reminders_screen.dart';
import 'package:remindme/widgets/common/sidebar.dart';

class ShellPage extends StatefulWidget {
  const ShellPage({super.key});

  @override
  State<ShellPage> createState() => _ShellPageState();
}

class _ShellPageState extends State<ShellPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //Todo: Header
        children: [
          Row(
            children: [
              Sidebar(
                selectedIndex: selectedIndex,
                onItemSelected: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),

              //Todo: Page
              Expanded(
                child: _getPage(),
              ),
            ],
          ),
        ],
      ),
    );
  }

   Widget _getPage() {
    switch (selectedIndex) {
      case 0:
        return const DashboardScreen();
      case 1:
        return const RemindersScreen();
      case 2:
        return const Center(child: Text("Third Page"));
      default:
        return const DashboardScreen();
    }
  }
}
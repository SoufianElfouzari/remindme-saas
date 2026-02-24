import 'package:flutter/material.dart';
import 'package:remindme/models/navigation_item_model.dart';
import 'package:remindme/screens/dashboard_screen.dart';

class NavigationItems {
  static const List<NavigationItemModel> items = [
    NavigationItemModel(
      title: 'Dashboard',
      icon: Icons.dashboard,
      page: DashboardScreen(),
    ),
    NavigationItemModel(
      title: 'Reminders',
      icon: Icons.note_outlined,
      page: Placeholder(),
    ),
    NavigationItemModel(
      title: 'Contacts',
      icon: Icons.person,
      page: Placeholder(),
    ),
  ];
}
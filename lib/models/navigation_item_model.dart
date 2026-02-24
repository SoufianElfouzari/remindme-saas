import 'package:flutter/material.dart';

class NavigationItemModel {
  final String title;
  final IconData icon;
  final Widget page;

  const NavigationItemModel({
    required this.title,
    required this.icon,
    required this.page,
  });
}
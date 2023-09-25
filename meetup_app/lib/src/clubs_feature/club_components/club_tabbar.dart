import 'package:flutter/material.dart';

class ClubTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Icon> tabIcons = [
    const Icon(Icons.event_note),
    const Icon(Icons.people),
    const Icon(Icons.calendar_month),
    const Icon(Icons.info),
  ];

  ClubTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:
          Axis.horizontal, // Set the scroll direction to horizontal
      child: TabBar(
        isScrollable: true, // Enable scrollable tabs
        // These are the widgets to put in each tab in the tab bar.
        tabs: tabIcons.map((Icon icon) => Tab(icon: icon)).toList(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}

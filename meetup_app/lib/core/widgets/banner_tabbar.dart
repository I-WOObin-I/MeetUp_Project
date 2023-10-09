import 'package:flutter/material.dart';

class BannerTabBar extends StatelessWidget implements PreferredSizeWidget {
  List<Icon> tabIcons;

  BannerTabBar({Key? key, required List<Icon> this.tabIcons}) : super(key: key);

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

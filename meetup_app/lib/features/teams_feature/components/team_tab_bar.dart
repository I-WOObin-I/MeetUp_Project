import 'package:flutter/material.dart';

class TeamTabBar extends StatelessWidget {
  final List<String> tabs;
  final int selectedTabIndex;
  final ValueChanged<int> onTabSelected;

  TeamTabBar({
    required this.tabs,
    required this.selectedTabIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Team Name'), // Replace with your team's name
        ),
        body: TeamDetailsContent(),
      ),
    );
  }
}

class TeamDetailsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/samples/team_photo.png'), // Replace with your team's image
                fit: BoxFit.cover,
              ),
            ),
          ),
          TeamTabBar(
            tabs: [
              'Matches',
              'Points',
              'Members',
              'Calendar',
              'Sponsors',
              'Contact'
            ],
            selectedTabIndex:
                0, // Replace with the initially selected tab index
            onTabSelected: (index) {
              // Handle tab selection here
            },
          ),
          // Add your main content below the banner and tab bar
          // For example, you can add a list of latest posts here
        ],
      ),
    );
  }
}

class TeamTabBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => kToolbarHeight;
  @override
  double get maxExtent => kToolbarHeight;
  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return TeamTabBar(
      tabs: ['Matches', 'Points', 'Members', 'Calendar', 'Sponsors', 'Contact'],
      selectedTabIndex: 0, // Replace with the initially selected tab index
      onTabSelected: (index) {
        // Handle tab selection here
      },
    );
  }
}

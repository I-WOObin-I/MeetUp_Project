import 'package:flutter/material.dart';
import 'package:meetup_app/src/features/clubs_feature/club_components/club_banner.dart';
import 'package:meetup_app/src/features/clubs_feature/club_components/club_drawer.dart';
import 'package:meetup_app/src/features/clubs_feature/club_components/club_title.dart';
import 'package:meetup_app/src/features/clubs_feature/club_sections/club_board_section.dart';
import 'package:meetup_app/src/features/clubs_feature/club_sections/club_info_section.dart';
import 'package:meetup_app/src/features/clubs_feature/club_sections/club_members_section.dart';
import 'package:meetup_app/src/features/leagues_feature/league_sections/league_table_section.dart';
import 'package:meetup_app/src/features/leagues_feature/league_sections/league_upcoming_matches_section.dart';
import 'package:meetup_app/src/features/user_feature/user_sections/user_profile_section.dart';

import '../../../core/widgets/banner_tabbar.dart';

class UserDetailsView extends StatefulWidget {
  UserDetailsView({super.key});

  static const routeName = '/user_details';

  @override
  _UserDetailsViewState createState() => _UserDetailsViewState();
}

class _UserDetailsViewState extends State<UserDetailsView> {
  int _selectedTabIndex = 0;

  List<Icon> tabBarIcons = [
    const Icon(Icons.person),
    const Icon(Icons.leaderboard),
    const Icon(Icons.calendar_month),
    const Icon(Icons.info),
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> tabs = <String>[
      'Tab 1',
      'Tab 2',
      'Tab 3',
      'Tab 4',
    ];
    return DefaultTabController(
      length: tabs.length, // Number of tabs
      child: Scaffold(
        endDrawer: const ClubDrawer(),
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              // These are the slivers that show up in the "outer" scroll view.
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    title: const ClubTitle(
                        clubName: "League Name",
                        clubLogoPath: "assets/images/samples/team_logo.png"),
                    floating: true,
                    pinned: true,
                    snap: true,
                    stretch: true,
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          // Navigate to the settings page. If the user leaves and returns
                          // to the app after it has been killed while running in the
                          // background, the navigation stack is restored.
                          Scaffold.of(context).openEndDrawer();
                          //Navigator.restorablePushNamed(context, SettingsView.routeName);
                        },
                      ),
                    ],                  
                    expandedHeight: 150.0,
                    //forceElevated: innerBoxIsScrolled,
                    bottom: BannerTabBar(
                      tabIcons: tabBarIcons,
                    ),
                  ),
                ),
              ];
            },
            body: Container(
              // decoration: const BoxDecoration(
              //   gradient: LinearGradient(
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //     colors: [
              //       Color.fromARGB(255, 15, 192, 24),
              //       Color.fromARGB(255, 206, 36, 14),
              //     ],
              //   ),
              // ),
              padding: EdgeInsets.all(5.0),
              margin: const EdgeInsets.only(top: kTextTabBarHeight),
              child: const TabBarView(
                  // These are the contents of the tab views, below the tabs.

                  children: [
                    UserProfileSection(),
                    LeagueTableSection(),
                    Text("data"),
                    Text("data"),
                  ]),
            )),
      ),
    );
  }
}

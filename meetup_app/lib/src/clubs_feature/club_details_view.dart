import 'package:flutter/material.dart';
import 'package:meetup_app/src/clubs_feature/club_components/club_banner.dart';
import 'package:meetup_app/src/clubs_feature/club_components/club_drawer.dart';
import 'package:meetup_app/src/clubs_feature/club_components/club_title.dart';
import 'package:meetup_app/src/clubs_feature/club_sections/club_board_section.dart';
import 'package:meetup_app/src/clubs_feature/club_sections/club_info_section.dart';
import 'package:meetup_app/src/clubs_feature/club_sections/club_members_section.dart';

import '../../core/widgets/banner_tabbar.dart';
import 'club_sections/club_calendar_section.dart';

class ClubDetailsView extends StatefulWidget {
  ClubDetailsView({super.key});

  static const routeName = '/club_details';

  @override
  _ClubDetailsViewState createState() => _ClubDetailsViewState();
}

class _ClubDetailsViewState extends State<ClubDetailsView> {
  int _selectedTabIndex = 0;

  List<Icon> tabBarIcons = [
    const Icon(Icons.event_note),
    const Icon(Icons.people),
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
                        clubName: "Club Name",
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
                    flexibleSpace: const ClubBanner(
                        bannerImagePath:
                            'assets/images/samples/team_photo.png'),
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
              margin: const EdgeInsets.only(top: kTextTabBarHeight),
              child: const TabBarView(
                  // These are the contents of the tab views, below the tabs.
                  children: [
                    ClubBoardSection(),
                    ClubMembersSection(),
                    ClubCalendarSection(),
                    ClubInfoSection(),
                  ]),
            )),
      ),
    );
  }
}

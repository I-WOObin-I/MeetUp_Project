import 'package:flutter/material.dart';
import 'package:meetup_app/core/widgets/banner_tabbar.dart';
import 'package:meetup_app/features/clubs_feature/club_components/club_banner.dart';
import 'package:meetup_app/features/clubs_feature/club_components/club_drawer.dart';
import 'package:meetup_app/features/clubs_feature/club_components/club_title.dart';
import 'package:meetup_app/features/organisations_feature/organisation_sections/organisation_table_section.dart';
import 'package:meetup_app/features/organisations_feature/organisation_sections/organisation_upcoming_matches_section.dart';

class OrganisationDetailsView extends StatefulWidget {
  OrganisationDetailsView({super.key});

  static const routeName = '/organisation_details';

  @override
  _OrganisationDetailsViewState createState() => _OrganisationDetailsViewState();
}

class _OrganisationDetailsViewState extends State<OrganisationDetailsView> {
  int _selectedTabIndex = 0;

  List<Icon> tabBarIcons = [
    const Icon(Icons.sports),
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
                        clubName: "Organisation Name",
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
                            'assets/images/samples/organisation_banner.png'),
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
                    OrganisationUpCommingMatchesSection(),
                    OrganisationTableSection(),
                    Text("data"),
                    Text("data"),
                  ]),
            )),
      ),
    );
  }
}

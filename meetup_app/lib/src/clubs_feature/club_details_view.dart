import 'package:flutter/material.dart';
import 'package:meetup_app/src/clubs_feature/club_components/club_banner.dart';
import 'package:meetup_app/src/clubs_feature/club_components/club_tabbar.dart';
import 'package:meetup_app/src/clubs_feature/club_components/club_title.dart';
import 'package:meetup_app/src/clubs_feature/club_sections/club_board_section.dart';

class ClubDetailsView extends StatefulWidget {
  final String clubName;

  ClubDetailsView({required this.clubName});

  static const routeName = '/club_details';

  @override
  _ClubDetailsViewState createState() => _ClubDetailsViewState();
}

class _ClubDetailsViewState extends State<ClubDetailsView> {
  int _selectedTabIndex = 0;

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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
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
                        Navigator.restorablePushNamed(
                            context, ClubDetailsView.routeName);
                        //Navigator.restorablePushNamed(context, SettingsView.routeName);
                      },
                    ),
                  ],
                  flexibleSpace: const ClubBanner(
                      bannerImagePath: 'assets/images/samples/team_photo.png'),
                  expandedHeight: 150.0,
                  //forceElevated: innerBoxIsScrolled,
                  bottom: ClubTabBar(),
                ),
              ),
            ];
          },
          body: TabBarView(
            // These are the contents of the tab views, below the tabs.
            children: tabs.map((String name) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      key: PageStorageKey<String>(name),
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          // This is the flip side of the SliverOverlapAbsorber
                          // above.
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(8.0),
                          // In this example, the inner scroll view has
                          // fixed-height list items, hence the use of
                          // SliverFixedExtentList. However, one could use any
                          // sliver widget here, e.g. SliverList or SliverGrid.
                          sliver: SliverFixedExtentList(
                            // The items in this example are fixed to 48 pixels
                            // high. This matches the Material Design spec for
                            // ListTile widgets.
                            itemExtent: 48.0,
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                // This builder is called for each child.
                                // In this example, we just number each list item.
                                return ListTile(
                                  title: Text('Item $index'),
                                );
                              },
                              // The childCount of the SliverChildBuilderDelegate
                              // specifies how many children this inner list
                              // has. In this example, each tab has a list of
                              // exactly 30 items, but this is arbitrary.
                              childCount: 30,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ClubTabBarDelegate extends SliverPersistentHeaderDelegate {
  final List<String> tabs;

  ClubTabBarDelegate({required this.tabs});

  @override
  double get minExtent => kToolbarHeight;
  @override
  double get maxExtent => kToolbarHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white, // Background color of the tab bar
      child: TabBar(
        tabs: tabs.map((tab) => Tab(text: tab)).toList(),
      ),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}

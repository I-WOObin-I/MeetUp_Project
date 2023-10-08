import 'package:flutter/material.dart';
import 'package:meetup_app/core/widgets/board_post_widget.dart';
import 'package:meetup_app/core/widgets/fixtures/league_table_widget.dart';
import 'package:meetup_app/core/widgets/match_widget.dart';

class LeagueTableSection extends StatefulWidget {
  const LeagueTableSection({Key? key}) : super(key: key);

  @override
  _LeagueUpCommingMatchesSectionState createState() =>
      _LeagueUpCommingMatchesSectionState();
}

class _LeagueUpCommingMatchesSectionState extends State<LeagueTableSection> {
  // Initialize a list to store the fetched data

  // Simulate fetching data from a database

  @override
  void initState() {
    super.initState();
    // Fetch data from the database when the widget initializes
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kTextTabBarHeight * 0.5),
      child: LeagueTableWidget(leagueTable: []),
    );
  }
}

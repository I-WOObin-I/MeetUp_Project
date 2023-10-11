import 'package:flutter/material.dart';
import 'package:meetup_app/core/widgets/fixtures/league_table_widget.dart';

class OrganisationTableSection extends StatefulWidget {
  const OrganisationTableSection({Key? key}) : super(key: key);

  @override
  _OrganisationUpCommingMatchesSectionState createState() =>
      _OrganisationUpCommingMatchesSectionState();
}

class _OrganisationUpCommingMatchesSectionState extends State<OrganisationTableSection> {
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

import 'package:flutter/material.dart';
import 'package:meetup_app/core/widgets/board_post_widget.dart';
import 'package:meetup_app/core/widgets/match_widget.dart';

import '../../../core/objects/board_post.dart';

class LeagueUpCommingMatchesSection extends StatefulWidget {
  const LeagueUpCommingMatchesSection({Key? key}) : super(key: key);

  @override
  _LeagueUpCommingMatchesSectionState createState() =>
      _LeagueUpCommingMatchesSectionState();
}

class _LeagueUpCommingMatchesSectionState
    extends State<LeagueUpCommingMatchesSection> {
  // Initialize a list to store the fetched data
  List<String> boardActivity = [];

  // Simulate fetching data from a database
  Future<void> fetchDataFromDatabase() async {
    // Replace this with your actual database fetching logic
    //await Future.delayed(Duration(seconds: 2));
    setState(() {
      // Update the list with fetched data
      boardActivity = List.generate(25, (index) => 'Post $index');
    });
  }

  @override
  void initState() {
    super.initState();
    // Fetch data from the database when the widget initializes
    fetchDataFromDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Upcoming Matches"),
        MatchWidget(),
        MatchWidget(),
        MatchWidget(),
        ListView.builder(
          itemCount: boardActivity.length,
          itemBuilder: (BuildContext context, int index) {
            return MatchWidget();
          },
        ),
      ],
    );
  }
}

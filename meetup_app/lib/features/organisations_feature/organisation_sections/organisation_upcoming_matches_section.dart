import 'package:flutter/material.dart';
import 'package:meetup_app/core/widgets/match_widget.dart';


class OrganisationUpCommingMatchesSection extends StatefulWidget {
  const OrganisationUpCommingMatchesSection({Key? key}) : super(key: key);

  @override
  _OrganisationUpCommingMatchesSectionState createState() =>
      _OrganisationUpCommingMatchesSectionState();
}

class _OrganisationUpCommingMatchesSectionState
    extends State<OrganisationUpCommingMatchesSection> {
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
    return ListView.builder(
          itemCount: boardActivity.length,
          itemBuilder: (BuildContext context, int index) {
            return MatchWidget();
          },
        );
  }
}

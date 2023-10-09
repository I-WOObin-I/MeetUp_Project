import 'package:flutter/material.dart';
import 'package:meetup_app/core/widgets/board_post_widget.dart';
import 'package:meetup_app/core/widgets/fixtures/league_table_widget.dart';
import 'package:meetup_app/core/widgets/match_widget.dart';

class UserProfileSection extends StatefulWidget {
  const UserProfileSection({Key? key}) : super(key: key);

  @override
  _UserProfileSectionState createState() =>
      _UserProfileSectionState();
}

class _UserProfileSectionState extends State<UserProfileSection> {
  // Initialize a list to store the fetched data

  // Simulate fetching data from a database

  @override
  void initState() {
    super.initState();
    // Fetch data from the database when the widget initializes
  }

  @override
  Widget build(BuildContext context) {
    return const Card(
        child: Row(
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            Text("user name"),
          ],
        ),
      
      
    );
  }
}

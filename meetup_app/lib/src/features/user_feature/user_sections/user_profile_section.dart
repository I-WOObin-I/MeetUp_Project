import 'package:flutter/material.dart';
import 'package:meetup_app/core/widgets/board_post_widget.dart';
import 'package:meetup_app/core/widgets/fitted_text.dart';
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
    return ListView(
      children: [
        Container(
          height: 150.0,
          child: Card(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40.0,
                      child: Icon(Icons.person),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: FittedText("user name", 150.0)
                      ),
                  ],
                ),
              ),
            
            
          ),
      ),
      Container(
        height: 150.0,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,

            child: const ListTile(
              title: Text("sample info"),
              subtitle: Text("sample info"),
              //trailing: FittedText("user name", 150.0),
            ),
            )
          )
        ),
        Container(
        height: 150.0,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,

            child: const ListTile(
              title: Text("sample info"),
              subtitle: Text("sample info"),
              //trailing: FittedText("user name", 150.0),
            ),
            )
          )
        ),
        Container(
        height: 150.0,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,

            child: const ListTile(
              title: Text("sample info"),
              subtitle: Text("sample info"),
              //trailing: FittedText("user name", 150.0),
            ),
            )
          )
        ),
      
      ],
    );
  }
}















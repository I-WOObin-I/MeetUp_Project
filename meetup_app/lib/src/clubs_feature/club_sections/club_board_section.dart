import 'package:flutter/material.dart';

class ClubBoardSection extends StatefulWidget {
  const ClubBoardSection({Key? key}) : super(key: key);

  @override
  _ClubBoardSectionState createState() => _ClubBoardSectionState();
}

class _ClubBoardSectionState extends State<ClubBoardSection> {
  // Initialize a list to store the fetched data
  List<String> boardActivity = [];

  // Simulate fetching data from a database
  Future<void> fetchDataFromDatabase() async {
    // Replace this with your actual database fetching logic
    //await Future.delayed(Duration(seconds: 2));
    setState(() {
      // Update the list with fetched data
      boardActivity = List.generate(10, (index) => 'Post $index');
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
        return ListTile(
          title: Text(boardActivity[index]),
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/samples/team_logo.png'),
          ),
          subtitle: Text('Subtitle $index'),
          trailing: const Icon(Icons.more_vert),
        );
      },
    );
  }
}

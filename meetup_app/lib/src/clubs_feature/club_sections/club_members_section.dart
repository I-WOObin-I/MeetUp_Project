import 'package:flutter/material.dart';

class ClubMembersSection extends StatefulWidget {
  const ClubMembersSection({Key? key}) : super(key: key);

  @override
  _ClubMembersSectionState createState() => _ClubMembersSectionState();
}

class _ClubMembersSectionState extends State<ClubMembersSection> {
  // Initialize a list to store the fetched data
  List<String> membersList = [];

  // Simulate fetching data from a database
  Future<void> fetchDataFromDatabase() async {
    // Replace this with your actual database fetching logic
    //await Future.delayed(Duration(seconds: 2));
    setState(() {
      // Update the list with fetched data
      membersList = List.generate(25, (index) => 'Member Name $index');
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
      itemCount: membersList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(membersList[index]),
            subtitle: const Text('Member role'),
          ),
        );
      },
    );
  }
}

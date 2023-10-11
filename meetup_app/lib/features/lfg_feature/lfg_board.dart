import 'package:flutter/material.dart';
import 'package:meetup_app/core/objects/sports.dart';
import 'package:meetup_app/core/widgets/lfg_post_widget.dart';
import 'package:meetup_app/features/lfg_feature/lfg_filter_bar.dart';

import '../../../core/objects/lfg_post.dart';
import '../../../core/objects/skill_lvl.dart';

class LFGBoard extends StatefulWidget {
  const LFGBoard({Key? key}) : super(key: key);

  @override
  __LFGBoardState createState() => __LFGBoardState();
}

class __LFGBoardState extends State<LFGBoard> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text("LFG Board"),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return LFGFilterBar();
                  });
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: boardActivity.length,
        itemBuilder: (BuildContext context, int index) {
          return LFGPostWidget(
              lfgPost: LFGPost(
                title: "sample title",
                author: 'Author $index',
                location: "sample location",
                publishDate: DateTime.now(),
                content: boardActivity[index],
                eventDate: DateTime.now(),
                sportType: SportType.volleyball,
                maxPlayers: 14,
                skillLevels: [SkillLevel.beginner, SkillLevel.intermediate]
                
          ));
        },
      ),
      
    );
  }
}

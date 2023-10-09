import 'package:flutter/material.dart';
import 'package:meetup_app/core/widgets/board_post_widget.dart';

import '../../../../core/objects/board_post.dart';

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
    return ListView.builder(
      itemCount: boardActivity.length,
      itemBuilder: (BuildContext context, int index) {
        return BoardPostWidget(
            boardPost: BoardPost(
          author: 'Author $index',
          publishDate: DateTime.now(),
          content: boardActivity[index],
          likes: [],
          comments: [],
        ));
      },
    );
  }
}

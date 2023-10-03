import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meetup_app/core/objects/board_post.dart';

class MatchWidget extends StatelessWidget {
  //Match match;
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm");
  MatchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
          contentPadding: EdgeInsets.all(0.0),
          leading: SizedBox(
            width: 130.0,
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(
                  width: 80, // Adjust width as needed
                  child: FittedBox(
                    fit: BoxFit.fitWidth, // Automatically scales down the text
                    child: Text(
                      "team 1 name", // Replace with your club name
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          trailing: SizedBox(
            width: 130.0,
            child: Row(
              children: [
                SizedBox(
                  width: 80, // Adjust width as needed
                  child: FittedBox(
                    fit: BoxFit.fitWidth, // Automatically scales down the text
                    child: Text(
                      "team 2 name", // Replace with your club name
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ],
            ),
          ),
          title: Center(
            child: Text(
              "VS",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          )),
    );
  }
}

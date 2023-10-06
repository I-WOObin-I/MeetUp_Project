import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meetup_app/core/objects/board_post.dart';
import 'package:meetup_app/core/widgets/fitted_text.dart';

class MatchWidget extends StatelessWidget {
  //Match match;
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm");
  MatchWidget({super.key});

  // HEADER
  Container header = Container(
      padding: const EdgeInsets.all(3.0),
      width: double.infinity,
      height: 48.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // LEFT
          const CircleAvatar(
            child: Icon(Icons.person),
          ),
          FittedText("team 1 name", 85.0),

          // MIDDLE
          const Column(
            children: [
              Text(
                "VS",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text("15.09.2023",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ))
            ],
          ),

          // RIGHT
          FittedText("team 2 name", 85.0),
          const CircleAvatar(
            child: Icon(Icons.person),
          ),
        ],
      ));

  // EXPANDED BODY
  Container body = Container(
      padding: const EdgeInsets.all(3.0),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("Ergo Arena"), Text("19:30"), Text("boisko nr 3")],
          ),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpandableNotifier(
        child: Column(
          children: [
            Expandable(
              // <-- Driven by ExpandableController from ExpandableNotifier
              collapsed: ExpandableButton(
                // <-- Expands when tapped on the cover photo
                child: header,
              ),
              expanded: ExpandableButton(
                  // <-- Expands when tapped on the cover photo
                  child: Column(
                children: [
                  header,
                  body,
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}

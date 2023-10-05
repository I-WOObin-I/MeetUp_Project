import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meetup_app/core/objects/board_post.dart';
import 'package:meetup_app/core/widgets/fitted_text.dart';

class MatchWidget extends StatelessWidget {
  //Match match;
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm");
  MatchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        initiallyExpanded: false,
        tilePadding: EdgeInsets.all(2.0),
        controlAffinity: ListTileControlAffinity.leading,
        // MIDDLE TEXT
        title: Container(
          color: Colors.grey[200],
          width: 80.0,
          child: Center(
              child: Column(
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
          )),
        ),
        leading: Stack(children: [Text("asdads"), Text("Team Logo")]),

        // EXPANDED
        children: [
          Center(
              child: Column(
            children: [
              Text(
                "Gdansk energetykow 1",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
              Text("2:1",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ))
            ],
          )),
        ],
      ),
    );
  }
}

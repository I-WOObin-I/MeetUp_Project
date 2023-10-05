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
        tilePadding: EdgeInsets.all(0.0),
        leading: SizedBox(
          width: 150.0,
          child: Row(
            children: [
              const CircleAvatar(
                child: Icon(Icons.person),
              ),
              FittedText("team 1 name", 100.0),
            ],
        ),
        ),
        trailing: SizedBox(
          width: 150.0,
          child:  Row(
            children: [
              FittedText("team 2 name", 100.0),
              const CircleAvatar(
                child: Icon(Icons.person),
              ),
            ],
        ),
        ),
        title: const Center(
          child: Column(
          children: [
            Text(
              "VS",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Text(
              "15.09.2023",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              )
            )
          ],
        )
          
          
        ),
        children: const [
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
                Text(
                  "2:1",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  )
                )
              ],
            )
          ),
        ],
        
      ),
    );
  }
}

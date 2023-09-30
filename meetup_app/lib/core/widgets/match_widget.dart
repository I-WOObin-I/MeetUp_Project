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
        leading: SizedBox(
          width: 120.0,
          child: Row(
          
            children: [
              CircleAvatar(
                child: Icon(Icons.person),
              ),
              Text(
                "team 1 name",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              )
            ],
        ),
        ),
        
        trailing: SizedBox(
          width: 120.0,
          child:  Row(
            children: [
              Text(
                "team 2 name",
                style: TextStyle(
                  fontSize: 12.0,
                )),
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
        )
        
      ),
    );
  }
}

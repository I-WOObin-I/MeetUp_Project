import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../objects/event.dart';

class EventWidget extends StatelessWidget {
  Event event;
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm");
  EventWidget({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.event),
        ),
        title: Text(
          dateFormat.format(DateTime.now()),
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.grey,
          ),
        ),
        subtitle: Text(
          event.content,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.thumb_up),
                const SizedBox(width: 4.0),
                Text(event.likes.length.toString()),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.comment),
                const SizedBox(width: 4.0),
                Text(event.comments.length.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

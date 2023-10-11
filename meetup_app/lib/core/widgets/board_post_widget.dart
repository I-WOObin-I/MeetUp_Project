import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meetup_app/core/objects/board_post.dart';

class BoardPostWidget extends StatelessWidget {
  BoardPost boardPost;
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm");
  BoardPostWidget({super.key, required this.boardPost});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(
          "${boardPost.author}  |  ${dateFormat.format(boardPost.publishDate)}",
          style: const TextStyle(
            fontSize: 12.0,
            //color: Colors.grey,
          ),
        ),
        subtitle: Text(
          boardPost.content,
          style: const TextStyle(
            fontSize: 16.0,
            //color: Colors.white,
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
                Text(boardPost.likes.length.toString()),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.comment),
                const SizedBox(width: 4.0),
                Text(boardPost.comments.length.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

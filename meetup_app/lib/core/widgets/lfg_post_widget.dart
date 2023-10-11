import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meetup_app/core/objects/lfg_post.dart';

class LFGPostWidget extends StatelessWidget {
  LFGPost lfgPost;
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm");
  LFGPostWidget({super.key, required this.lfgPost});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            isThreeLine: true,
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(
              "${lfgPost.author}  |  ${dateFormat.format(lfgPost.publishDate)}",
              style: const TextStyle(
                fontSize: 12.0,
                //color: Colors.grey,
              ),
            ),
            subtitle: Text(
              lfgPost.content,
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
                    const Icon(Icons.group, size: 25.0),
                    const SizedBox(width: 4.0),
                    Text("${lfgPost.attendeeIds.length.toString()} / ${lfgPost.maxPlayers.toString()}")
                ]),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.thumb_up, size: 15.0),
                    const SizedBox(width: 4.0),
                    Text(
                      lfgPost.likes.length.toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.comment, size: 15.0),
                    const SizedBox(width: 4.0),
                    Text(
                      lfgPost.comments.length.toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ]
            ),
          ),

          /////////
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(100.0, 20.0)),
                  backgroundColor: MaterialStateColor.resolveWith((states) => Colors.grey),
                  foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                ),
                onPressed: () {},
                child: const Text("Like"),
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(100.0, 30.0)),
                  backgroundColor: MaterialStateColor.resolveWith((states) => Colors.grey),
                  foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                ),
                onPressed: () {},
                child: const Text("Comment"),
              ),
              TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(100.0, 30.0)),
                  backgroundColor: MaterialStateColor.resolveWith((states) => Colors.grey),
                  foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                ),
                onPressed: () {},
                child: const Text("Join"),
              ),
          ],)
        ],
      ),
    );
  }
}

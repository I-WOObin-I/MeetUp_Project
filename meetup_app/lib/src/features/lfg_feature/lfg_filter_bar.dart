import 'package:flutter/material.dart';

class LFGFilterBar extends StatelessWidget {
  const LFGFilterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("LFG"),
      actions: [
        IconButton(
          icon: const Icon(Icons.filter_alt),
          onPressed: () {}
          ),
      ]
    );
  }
}
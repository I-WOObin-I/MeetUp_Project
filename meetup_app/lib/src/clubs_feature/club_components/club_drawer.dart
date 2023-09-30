import 'package:flutter/material.dart';

class ClubDrawer extends StatelessWidget {
  const ClubDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          SizedBox(
            height: 80,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Club Name'),
            ),
          ),
          DrawerItem(
            titleText: 'Item 1',
          ),
          DrawerItem(
            titleText: 'Item 2',
          ),
          DrawerItem(
            titleText: 'Item 3',
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends ListTile {
  const DrawerItem({Key? key, required this.titleText}) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titleText),
      trailing: const Icon(Icons.drag_handle),
    );
  }
}

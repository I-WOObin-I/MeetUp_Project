import 'package:flutter/material.dart';

class ClubInfoSection extends StatelessWidget {
  const ClubInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kTextTabBarHeight * 0.5),
      child: const ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
              'assets/images/samples/team_logo.png'), // Replace with your logo image path
        ),
        title: Row(
          children: [
            Text(
              'Club Name', // Replace with your club name
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0, // Adjust the font size as needed
              ),
            ),
            SizedBox(width: 8.0), // Add spacing between logo and name
          ],
        ),
        subtitle: Text(
          'Club details go here. You can provide a brief description of the club or any additional information you want to display.',
          style: TextStyle(fontSize: 16.0), // Adjust the font size as needed
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ClubTitle extends StatelessWidget {
  final String? clubName;
  final String? clubLogoPath;

  const ClubTitle({Key? key, this.clubName, this.clubLogoPath});

  @override
  Widget build(BuildContext context) {
    String imagePath =
        clubLogoPath ?? 'assets/images/default/club_logo_default.png';
    String titleText = clubName ?? '';

    return Row(
      children: [
        // Logo (you can replace 'logo.png' with your image path)
        Padding(
          padding:
              const EdgeInsets.only(right: 12.0), // Adjust spacing as needed
          child: Image.asset(
            imagePath, // Replace with your logo image path
            width: 48.0, // Adjust the width as needed
            height: 48.0, // Adjust the height as needed
            // You can also use other Image properties to customize the logo
          ),
        ),
        // Club Name (replace 'Club Name' with your actual club name)
        Container(
          width: 150, // Adjust width as needed
          child: FittedBox(
            fit: BoxFit.fitWidth, // Automatically scales down the text
            child: Text(
              titleText, // Replace with your club name
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

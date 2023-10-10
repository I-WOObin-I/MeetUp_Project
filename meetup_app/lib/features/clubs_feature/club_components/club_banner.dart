import 'package:flutter/material.dart';

class ClubBanner extends StatelessWidget {
  final String? bannerText;
  final String? bannerImagePath;

  const ClubBanner({super.key, this.bannerText, this.bannerImagePath});

  @override
  Widget build(BuildContext context) {
    String imagePath = bannerImagePath ??
        'assets/images/default/club_banner_image_default.png';
    String topText = bannerText ?? '';

    return FlexibleSpaceBar(
      background: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              imagePath, // Replace with your image path
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.15, 0.5],
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.4, 0.5],
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.all(30.0), // Adjust margin as needed
              child: Text(
                topText, // Set your club name here
                style: const TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 24.0, // Adjust font size as needed
                  fontWeight: FontWeight.bold, // Adjust font weight as needed
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

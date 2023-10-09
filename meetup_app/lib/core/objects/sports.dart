import 'package:flutter/material.dart';

enum SportType {
  volleyball(icon: Icon(Icons.sports_volleyball)),
  football(icon: Icon(Icons.sports_soccer)),
  basketball(icon: Icon(Icons.sports_basketball)),
  tennis(icon: Icon(Icons.sports_tennis)),
  badminton(icon: Icon(Icons.sports_tennis)),
  tableTennis(icon: Icon(Icons.sports_tennis)),
  handball(icon: Icon(Icons.sports_handball)),
  hockey(icon: Icon(Icons.sports_hockey)),
  squash(icon: Icon(Icons.sports_tennis)),
  cricket(icon: Icon(Icons.sports_cricket)),
  rugby(icon: Icon(Icons.sports_rugby)),
  americanFootball(icon: Icon(Icons.sports_football)),
  baseball(icon: Icon(Icons.sports_baseball)),
  golf(icon: Icon(Icons.sports_golf)),
  iceHockey(icon: Icon(Icons.sports_hockey)),
  ;

  const SportType({
    required this.icon,
    //required this.color,
  });

  final Icon icon;
  //final Color color;

}
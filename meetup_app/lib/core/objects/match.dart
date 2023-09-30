import 'package:flutter/material.dart';

class Match {
  final int leagueId;
  final int team1Id;
  final int team2Id;
  final DateTime matchDate;
  final String matchLocation;

  Match({
    required this.leagueId,
    required this.team1Id,
    required this.team2Id,
    required this.matchDate,
    required this.matchLocation,
  });
}

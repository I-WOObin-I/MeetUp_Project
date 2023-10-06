import 'package:flutter/material.dart';

class GameMatch {
  final String leagueId;
  final String team1Id;
  final String team2Id;
  final DateTime matchDate;
  final String matchLocation;

  GameMatch({
    required this.leagueId,
    required this.team1Id,
    required this.team2Id,
    required this.matchDate,
    required this.matchLocation,
  });
}

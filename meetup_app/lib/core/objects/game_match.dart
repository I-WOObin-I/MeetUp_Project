import 'package:flutter/material.dart';

class GameMatch {
  final String fixtureId;
  final String team1Id;
  final String team2Id;
  final DateTime matchDate;
  final String matchLocation;

  GameMatch({
    required this.fixtureId,
    required this.team1Id,
    required this.team2Id,
    required this.matchDate,
    required this.matchLocation,
  });

  factory GameMatch.fromJson(Map<String, dynamic> json) {
    return GameMatch(
      fixtureId: json['leagueId'],
      team1Id: json['team1Id'],
      team2Id: json['team2Id'],
      matchDate: DateTime.parse(json['matchDate']),
      matchLocation: json['matchLocation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'leagueId': fixtureId,
      'team1Id': team1Id,
      'team2Id': team2Id,
      'matchDate': matchDate.toIso8601String(),
      'matchLocation': matchLocation,
    };
  }
}

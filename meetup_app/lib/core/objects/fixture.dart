import 'package:flutter/material.dart';

import 'game_match.dart';

abstract class Fixture {
  String name;
  String organisationId;

  Fixture({
    required this.name,
    required this.organisationId,
  });

  List<String> getAllTeams();
  List<GameMatch> getAllMatches();
}

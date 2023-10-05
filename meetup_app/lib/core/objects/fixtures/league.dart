import 'package:flutter/material.dart';
import 'package:meetup_app/core/objects/fixture.dart';

import '../game_match.dart';

class LeaguePtsCategory {
  String name;
  List<int> points;
  LeaguePtsCategory({required this.name, this.points = const []});
}

class League extends Fixture {
  List<String> teamIds;
  List<GameMatch> matches;
  List<LeaguePtsCategory> ptsCategories;
  League({
    this.teamIds = const [],
    this.ptsCategories = const [],
    this.matches = const [],
  }) : super(
          name: "League",
          organisationId: "League",
        );

  void addPtsCategory(String name) {
    ptsCategories.add(LeaguePtsCategory(name: name));
  }

  void addTeam(String teamId) {
    teamIds.add(teamId);
  }

  void addMatch(GameMatch match) {
    if ((teamIds.contains(match.team1Id) || match.team1Id == 'empty') &&
        (teamIds.contains(match.team2Id) || match.team2Id == 'empty')) {
      matches.add(match);
      return;
    } else {
      throw Exception("Match teams not in league");
    }
  }

  @override
  List<String> getAllTeams() {
    return teamIds;
  }

  @override
  List<GameMatch> getAllMatches() {
    return matches;
  }

  List<LeaguePtsCategory> getAllPtsCategories() {
    return ptsCategories;
  }
}

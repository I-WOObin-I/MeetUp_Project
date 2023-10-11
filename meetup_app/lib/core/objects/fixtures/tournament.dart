import 'package:meetup_app/core/objects/fixture.dart';

import '../game_match.dart';

class Tournament extends Fixture {
  List<String> teamIds;
  List<GameMatch> matches;

  Tournament({
    this.teamIds = const [],
    this.matches = const [],
  }) : super(
          name: "League",
          organisationId: "League",
        );

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

  void generateLeader() {
    teamIds.shuffle();
  }
}

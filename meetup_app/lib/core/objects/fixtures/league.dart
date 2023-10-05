import 'package:flutter/material.dart';
import 'package:meetup_app/core/objects/fixture.dart';

class LeaguePtsCategory{
  String name;
  List<int> points;
  LeaguePtsCategory({required this.name, this.points = const []});
}

class League extends Fixture{
  List<String> teamIds;
  List<Match> matches;
  List<LeaguePtsCategory> ptsCategories;
  League({
    this.teamIds = const [],
    this.ptsCategories = const [],
    this.matches = const [],
    }) : super(name: "League", organisationId: "League",);

  void addPtsCategory(String name){
    ptsCategories.add(LeaguePtsCategory(name: name));
  }

  void addTeam(String teamId){
    teamIds.add(teamId);
  }

  void addMatch(Match match){
    if(
      (teamIds.contains(match.team1Id) || match.team1Id == 'empty') &&
      (teamIds.contains(match.team2Id) || match.team2Id == 'empty')
    )
    {
      matches.add(match);
      return;
    }
    else{
      throw Exception("Match teams not in league");
    }

  }



  List<String> getAllTeams(){
    return teamIds;
  }
  List<Match> getAllMatches(){
    return matches;
  }
  List<LeaguePtsCategory> getAllPtsCategories(){
    return ptsCategories;
  }

}
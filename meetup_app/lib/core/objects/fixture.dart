import 'package:flutter/material.dart';

abstract class Fixture{
  String name;
  String organisationId;

  Fixture({
    required this.name,
    required this.organisationId,
    });

  List<String> getAllTeams();
  List<Match> getAllMatches();



}
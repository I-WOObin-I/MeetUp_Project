import 'package:meetup_app/core/objects/skill_lvl.dart';
import 'package:meetup_app/core/objects/sports.dart';

class LFGPost {
  final String title;
  final String content;
  final String author;
  final DateTime publishDate;
  final DateTime eventDate;
  final String location;

  final SportType sportType;
  final List<String> attendeeIds = [];
  final int maxPlayers;
  final List<SkillLevel> skillLevels;
  

  final List<String> likes = [];
  final List<String> comments = [];

  LFGPost({
    required this.title,
    required this.content,
    required this.author,
    required this.publishDate,
    required this.eventDate,
    required this.location,


    required this.sportType,
    required this.maxPlayers,
    required this.skillLevels,
  });

  void addAttendee(String attendee) {
    attendeeIds.add(attendee);
  }

  void removeAttendee(String attendee) {
    attendeeIds.remove(attendee);
  }

  bool isAttending(String attendee) {
    return attendeeIds.contains(attendee);
  }
}

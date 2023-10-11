
class Event {
  final String title;
  final String content;
  final String author;
  final DateTime publishDate;
  final DateTime eventDate;

  final List<String> likes;
  final List<String> comments;

  List<String> attendees;

  Event({
    required this.title,
    required this.content,
    required this.author,
    required this.publishDate,
    required this.eventDate,
    this.likes = const [],
    this.comments = const [],
    this.attendees = const [],
  });

  void addAttendee(String attendee) {
    attendees.add(attendee);
  }

  void removeAttendee(String attendee) {
    attendees.remove(attendee);
  }

  bool isAttending(String attendee) {
    return attendees.contains(attendee);
  }
}

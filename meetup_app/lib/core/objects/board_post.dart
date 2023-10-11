
class BoardPost {
  final String? title;

  final String content;
  final String author;
  final DateTime publishDate;

  final List<String> likes;
  final List<String> comments;

  BoardPost({
    required this.content,
    required this.author,
    required this.publishDate,
    this.title,
    this.likes = const [],
    this.comments = const [],
  });
}

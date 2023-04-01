class Content {
  final String? id;
  final String content;
  final int stt;
  final int like;
  final int dislike;

  Content({
    this.id,
    required this.content,
    required this.stt,
    required this.like,
    required this.dislike,
  });

  // int? getStt() {
  //   return stt;
  // }

  // int get listStt{
  //   return stt;
  // }

  Content copyWith({
    String? id,
    String? content,
    int? stt,
    int? like,
    int? dislike,
  }) {
    return Content(
      id: id ?? this.id,
      content: content ?? this.content,
      stt: stt ?? this.stt,
      like: like ?? this.like,
      dislike: dislike ?? this.dislike,
    );
  }
}

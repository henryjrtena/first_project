class SubTopic {
  final String heading;
  final String body;

  SubTopic({
    required this.heading,
    required this.body,
  });

  factory SubTopic.fromJson(Map<String, dynamic> json) => SubTopic(
    heading: json["heading"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "heading": heading,
    "body": body,
  };
}

class Topic {
  String topic;
  String heading;
  String body;

  Topic({
    required this.topic,
    required this.heading,
    required this.body,
  });

  factory Topic.fromJson(Map<String, dynamic> json) => Topic(
        topic: json["topic"],
        heading: json["heading"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "topic": topic,
        "heading": heading,
        "body": body,
      };
}

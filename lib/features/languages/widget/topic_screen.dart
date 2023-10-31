import 'package:first_project/features/languages/widget/topic_drawer.dart';
import 'package:first_project/models/subtopic.dart';
import 'package:first_project/models/topic.dart';
import 'package:first_project/utils/constant.dart';
import 'package:first_project/utils/enums.dart';
import 'package:flutter/material.dart';

class TopicScreen extends StatefulWidget {
  const TopicScreen({
    required this.language,
    required this.category,
    super.key,
  });

  final Languages language;
  final Categories category;

  @override
  State<TopicScreen> createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
  late final List<Topic> topics;
  late int selectedTopicIndex;

  @override
  void initState() {
    super.initState();
    topics = [...getTopics];
    selectedTopicIndex = 0;
  }

  List<Topic> get getTopics {
    if (codex.containsKey(widget.language) && codex[widget.language]!.containsKey(widget.category)) {
      final topics = [...codex[widget.language]![widget.category]!.values];

      return topics.map((topic) => Topic.fromJson(topic)).toList();
    }

    return List.empty();
  }

  Topic get selectedTopics => topics[selectedTopicIndex];

  void onUpdateSelectedTopic(int index) {
    setState(() {
      selectedTopicIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print({"selectedTopics": selectedTopics.subTopic});

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_left),
        ),
        actions: [
          Builder(
            builder: (scaffoldContext) => IconButton(
              onPressed: () => Scaffold.of(scaffoldContext).openDrawer(),
              icon: const Icon(Icons.menu),
            ),
          )
        ],
        title: Text(widget.language.value),
      ),
      drawer: Builder(
        builder: (scaffoldContext) => TopicDrawer(
          topics: topics,
          onUpdateSelectedTopic: onUpdateSelectedTopic,
        ),
      ),
      body: topics.isNotEmpty
          ? Column(
              children: [
                Text(topics[selectedTopicIndex].topic),
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final subTopic = SubTopic.fromJson(selectedTopics.subTopic[index]);

                    return Column(
                      children: [
                        Text(subTopic.heading),
                        Text(subTopic.body),
                      ],
                    );
                  },
                  itemCount: selectedTopics.subTopic.length,
                ),
              ],
            )
          : const Center(child: Text('No topics prepared.')),
    );
  }
}

import 'package:first_project/models/topic.dart';
import 'package:flutter/material.dart';

class TopicDrawer extends StatelessWidget {
  const TopicDrawer({
    required this.topics,
    required this.onUpdateSelectedTopic,
    super.key,
  });

  final List<Topic> topics;
  final ValueChanged<int> onUpdateSelectedTopic;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: topics.isNotEmpty
          ? ListView.builder(
              itemBuilder: (context, index) {
                final topic = topics[index];

                return GestureDetector(
                  child: ListTile(title: Text(topic.topic)),
                  onTap: () {
                    Scaffold.of(context).closeDrawer();
                    onUpdateSelectedTopic(index);
                  },
                );
              },
              itemCount: topics.length,
            )
          : const Center(child: Text('No topics available.')),
    );
  }
}

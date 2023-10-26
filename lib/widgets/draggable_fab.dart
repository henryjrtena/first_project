import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';

class PersonalHelper extends StatelessWidget {
  const PersonalHelper({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableFab(
      child: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Input Modal'),
                content: const SizedBox(
                  // HEIGHT OF MODAL
                  width: 300,
                  height: 300,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.send),
                          hintText: 'Type here',
                        ),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('Send'),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                  ),
                ],
              );
            },
          );
        },
        child: ClipOval(
          child: Image.asset('assets/jrizal.jpg', width: 60, height: 60, fit: BoxFit.cover),
        ),
      ),
    );
  }
}

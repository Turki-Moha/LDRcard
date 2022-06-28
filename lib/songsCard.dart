// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'songsList.dart';

// ignore: camel_case_types
class songsCard extends StatelessWidget {
  final Songs song;
  final Function() delete;

  // ignore: use_key_in_widget_constructors
  const songsCard({required this.song, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              song.song,
              style: TextStyle(
                fontSize: 18,
                color: Colors.teal[800],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              song.artistName,
              style: TextStyle(
                fontSize: 14,
                color: Colors.teal[900],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            FlatButton.icon(
              onPressed: delete,
              icon: const Icon(Icons.delete),
              label: const Text(
                'Delete',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

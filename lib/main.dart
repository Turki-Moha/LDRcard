// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:my_id/songsCard.dart';
import 'package:my_id/songsList.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Card(),
      ),
    );

class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  int likeCount = 0;

  List<Songs> songs = [
    Songs(artistName: 'Lana Del Rey', song: 'Black Beauty'),
    Songs(artistName: 'Lana Del Rey', song: 'UltraViolence'),
    Songs(artistName: 'Lana Del Rey', song: 'National Anthem')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: const Text('Music Player'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/lana.jpg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[900],
            ),
            Text(
              'Artist:',
              style: TextStyle(
                color: Colors.grey[900],
                letterSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Lana Del Rey',
              style: TextStyle(
                color: Colors.cyan[900],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Best album:',
              style: TextStyle(
                color: Colors.grey[900],
                letterSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Ultraviolence',
              style: TextStyle(
                color: Colors.cyan[900],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(
                      () {
                        likeCount++;
                      },
                    );
                  },
                  backgroundColor: Colors.blueGrey[900],
                  child: const Icon(
                    Icons.favorite_border,
                  ),
                ),
                Text(
                  'Likes: $likeCount',
                  style: TextStyle(
                    color: Colors.blueGrey[900],
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Songs',
              style: TextStyle(
                color: Colors.grey[900],
                letterSpacing: 1,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: songs
                  .map(
                    (song) => songsCard(
                      song: song,
                      delete: () {
                        setState(
                          () {
                            songs.remove(song);
                          },
                        );
                      },
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

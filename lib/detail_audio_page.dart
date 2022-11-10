// ignore_for_file: prefer_const_constructors
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class audioPage extends StatefulWidget {
  const audioPage({super.key});

  @override
  State<audioPage> createState() => _audioPageState();
}

class _audioPageState extends State<audioPage> {
  late AudioPlayer advancedPlayer;
  @override
  void initState() {
    super.initState();
    advancedPlayer = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 3,
            child: Container(
              color: Colors.amberAccent,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 5,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('I Knew You Were Trouble',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "avenir")),
                  Text(
                    'Taylor Swift',
                    style: TextStyle(fontSize: 15),
                  )
                  //audio_player(advanceplayer: advanceplayer);
                  // AudioFile(advancedPlayer: advancedPlayer);
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.01,
            left: (screenWidth - 150) / 2,
            right: (screenWidth - 150) / 2,
            bottom: screenHeight * 0.6,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/en/7/70/I_Knew_You_Were_Trouble.png"),
                          fit: BoxFit.contain)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

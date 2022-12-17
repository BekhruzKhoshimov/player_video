import 'package:flutter/material.dart';
import 'package:player_video/pages/video_items.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Video Pllayer"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              "assets/video/ram.mp4",
            ),
            looping: true,
            autoplay: true,
          )
        ],
      ),
    );
  }
}

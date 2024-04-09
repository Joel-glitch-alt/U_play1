import 'package:flutter/material.dart';
import 'package:joel_s_application10/features/core/app_export.dart';
import 'package:joel_s_application10/features/presentation/presentation/profile_page_one_screen/profile_page_one_screen.dart';
import 'package:joel_s_application10/features/presentation/presentation/voting_screen/voting_screen.dart';
import 'package:video_player/video_player.dart';

class MediaPlayer extends StatefulWidget {
  const MediaPlayer({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;

  @override
  State<MediaPlayer> createState() => _MediaPlayerState();
}

class _MediaPlayerState extends State<MediaPlayer> {
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _initializeVideoPlayerFuture = _videoPlayerController.initialize();
    _initializeVideoPlayerFuture.then((_) {
      _videoPlayerController.play();
      _videoPlayerController.setLooping(true);
      setState(() {});
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A2246),
      appBar: AppBar(
        backgroundColor: Color(0xFF1A2246),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                // Add your search logic here
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.person), // Profile icon
            onPressed: () {
              // Add your profile icon onPressed logic here
              Get.to(ProfilePageOneScreen() /*VotingScreen()*/);
              //print('Profile button pressed');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 250,
                  width: 400,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return AspectRatio(
                          aspectRatio: _videoPlayerController.value.aspectRatio,
                          child: VideoPlayer(_videoPlayerController),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Artist',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Song Title',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        'Song Title',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Votes',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        '2000',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Fan Base Trending videos",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150,
                //width: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    // Example video URLs
                    List<String> videoUrls = [
                      'https://www.youtube.com/watch?v=n1Y4HROvFME',
                      'https://www.youtube.com/watch?v=n1Y4HROvFME',
                      'https://www.youtube.com/watch?v=n1Y4HROvFME',
                      'https://www.youtube.com/watch?v=n1Y4HROvFME',
                      'https://www.youtube.com/watch?v=n1Y4HROvFME',
                      // Add more video URLs as needed
                    ];

                    return VideoCard(
                        videoUrl: videoUrls[index % videoUrls.length]);
                  },
                ),
              ),
              Column(
                  // children: [
                  //   Text(
                  //     "Region & Rep",
                  //     style: TextStyle(
                  //         color: Colors.white, fontWeight: FontWeight.bold),
                  //   ),
                  //   SizedBox(
                  //     height: 5,
                  //   ),
                  //   Container(
                  //     height: 100,
                  //     width: 100,
                  //     decoration: BoxDecoration(
                  //         color: Colors.grey.shade600,
                  //         borderRadius: BorderRadius.circular(19)),
                  //   )
                  // ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}

class VideoCard extends StatefulWidget {
  final String videoUrl;

  const VideoCard({Key? key, required this.videoUrl}) : super(key: key);

  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl);
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized
      setState(() {});
    });
  }

  //Custom Widgets
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 300, // Adjust the width as needed
        height: 200, // Adjust the height as needed
        child: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

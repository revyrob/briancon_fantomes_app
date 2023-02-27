//import 'package:carousel_hero/models/models.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:briancon_fantomes/components/neobox.dart';
import 'package:briancon_fantomes/models/models.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final DataModel data;
  const DetailsScreen({Key? key, required this.data}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  //add audio player
  final player = AudioPlayer();
  //add for the audio player so we can add slider and info
  bool isPlaying = false;
  //variable for duration
  Duration duration = Duration.zero;
  //variable for position
  Duration position = Duration.zero;
  //format time function
  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  //initiate state for position
  //**currently this is making the slider work?? */
  @override
  void initState() {
    super.initState();

    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        duration = newPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // app bar with back are and where it goes
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black87),
          elevation: 0,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              //child with image
              NeuBox(
                  child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(widget.data.imageName,
                        fit: BoxFit.cover, height: 350, width: 350),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          widget.data.title,
                          style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.data.location,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
              //spacing
              const SizedBox(
                height: 25,
              ),

              //buttons for play and pause
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: SizedBox(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () async {
                              await player.play(AssetSource(widget.data.audio));
                            },
                            child: const Icon(Icons.play_arrow)),
                        ElevatedButton(
                            onPressed: () {
                              player.pause();
                            },
                            child: const Icon(Icons.pause)),
                      ],
                    )),
              ),

              //Time lapse
              Slider(
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (value) {
                  final position = Duration(seconds: value.toInt());
                  player.seek(position);
                  player.resume();
                },
              ),

              //for the time stamp
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //use format time function add fill in the beginning and ending time
                children: [
                  Text(formatTime((duration - position).inSeconds)),
                  Text(formatTime(position.inSeconds)),
                ],
              ),
            ],
          ),
        )));
  }
}

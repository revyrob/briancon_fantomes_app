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

              //Time lapse
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [Text("0'00"), Text("4'22")],
              ),

              //buttons for play and pause
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: SizedBox(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Expanded(
                        //     child: NeuBox(

                        //         child: Icon(Icons.play_arrow, size: 32))),
                        ElevatedButton(
                          onPressed: () async {
                            await player.play(AssetSource(widget.data.audio));
                          },
                          child: const Text('to play click here'),
                        ),
                        // onPressed: () {
                        //   played.play(
                        //       AssetSource('audio/audioAng/Chpt1.mp3'));
                        // },
                        // child: const Icon(Icons.play_arrow))
                      ],
                    )),
              )
            ],
          ),
        ))
        //Column(
        //Image
        //chapter and title
        //info for playing using audio player
        //play button and pause button for audio player
        // children: <Widget>[
        //   Padding(
        //     padding: const EdgeInsets.only(bottom: 20),
        //     child: Text(
        //       widget.data.title,
        //       style: const TextStyle(
        //           color: Colors.black87,
        //           fontSize: 25,
        //           fontWeight: FontWeight.bold),
        //     ),
        //   ),
        //   Expanded(
        //       flex: 3,
        //       child: Padding(
        //         padding: const EdgeInsets.all(20.0),
        //         child: Hero(
        //           tag: widget.data.imageName,
        //           child: Container(
        //             decoration: BoxDecoration(
        //                 color: Colors.white,
        //                 borderRadius: BorderRadius.circular(30),
        //                 image: DecorationImage(
        //                     image: AssetImage(
        //                       widget.data.imageName,
        //                     ),
        //                     fit: BoxFit.fill),
        //                 boxShadow: const [
        //                   BoxShadow(
        //                       offset: Offset(0, 4),
        //                       blurRadius: 4,
        //                       color: Colors.black26)
        //                 ]),
        //           ),
        //         ),
        //       )),
        //   Expanded(
        //     flex: 1,
        //     child: Padding(
        //       padding: const EdgeInsets.only(bottom: 20),
        //       child: Text(
        //         widget.data.location,
        //         style: const TextStyle(
        //             color: Colors.black54,
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold),
        //       ),
        //     ),
        //   ),
        // ],
        //),
        );
  }
}

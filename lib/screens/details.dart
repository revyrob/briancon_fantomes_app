//import 'package:carousel_hero/models/models.dart';
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
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(widget.data.imageName)),
                  Text(
                    widget.data.title,
                    style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.data.location,
                    style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
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

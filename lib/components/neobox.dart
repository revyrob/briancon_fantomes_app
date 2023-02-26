import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  //be able to pass through a child
  final child;
  const NeuBox({Key? key, required this.child}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        //put in child
        child: Center(child: child),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 15,
                offset: Offset(5, 5),
              ),
              //lighter shadow on top left
              const BoxShadow(
                  color: Colors.white, blurRadius: 15, offset: Offset(-5, -5))
            ]));
  }
}

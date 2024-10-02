import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Track Cycle"), centerTitle: true, actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.check_rounded))
      ],),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          color: const Color(0xffF9EFF6),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Center(child: Text("Cześś, jestem wesoły Romek")),
          color: Colors.lightBlue[300],
          width: 200.0,
          height: 200.0,
        ),
        ButtonBar(),
      ],
    ));
  }
}

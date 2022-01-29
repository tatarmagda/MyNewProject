import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var hight = Random().nextInt(500);
  var widht = Random().nextInt(500);
  List colorList = [
    Colors.purple[300],
    Colors.purple[200],
    Colors.pink[100],
    Colors.red[200],
    Colors.red[300],
    Colors.red[400],
    Colors.red[500],
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
              child: Center(child: Text("Cześś, jestem wesoły Romek")),
              color: colorList[index],
              width: widht.toDouble(),
              height: hight.toDouble(),
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              hight = Random().nextInt(500);
              widht = Random().nextInt(500);
              index = Random().nextInt(colorList.length - 1);
            });
          },
          child: Text("Click me"),
          color: colorList[index + 1],
          shape: StadiumBorder(),
        )
      ],
    ));
  }
}

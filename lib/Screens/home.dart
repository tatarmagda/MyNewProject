import 'package:flutter/material.dart';
import 'package:mynewproject/Screens/Calculator.dart';
import 'package:mynewproject/Screens/ToDoApp.dart';
import 'package:mynewproject/Screens/firstscreen.dart';
import 'package:mynewproject/Widgets/text_widget.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> myScreens = [
    FirstScreen(),
    Calcpage(),
    ToDoAppPage(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[index],
      appBar: AppBar(
        centerTitle: true,
        title: MyTextWidget(
          text: "Home Page",
          color: Colors.white54,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            InkWell(
              child: Icon(Icons.home),
              onTap: () {
                setState(() {
                  index = 0;
                });
              },
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
              icon: Icon(Icons.search),
            ),
            InkWell(
              child: Icon(Icons.check),
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

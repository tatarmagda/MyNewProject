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
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width: 200.0,
                    color: Colors.blue[200],
                    child: TextButton(
                      onPressed: () {
                        setState(() => index = 0);
                        Navigator.of(context).pop();
                      },
                      child: MyTextWidget(
                        size: 20.0,
                        color: Colors.red[300],
                        text: "My Home Page",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width: 200.0,
                    color: Colors.blue[400],
                    child: TextButton(
                      onPressed: () {
                        setState(() => index = 1);
                        Navigator.of(context).pop();
                      },
                      child: MyTextWidget(
                        size: 20.0,
                        color: Colors.red[600],
                        text: "Calculator",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width: 200.0,
                    color: Colors.blue[900],
                    child: TextButton(
                      onPressed: () {
                        setState(() => index = 2);
                        Navigator.of(context).pop();
                      },
                      child: MyTextWidget(
                        size: 20.0,
                        color: Colors.red[100],
                        text: "To Do App",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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
      ),
    );
  }
}

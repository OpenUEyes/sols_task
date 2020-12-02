import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.white,
    Colors.indigo,
    Colors.grey,
    Colors.orange,
  ];
  Random random = new Random();
  Color backgroundColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'sols task',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.cyanAccent[700],
          centerTitle: true,
        ),
        body: InkWell(
          child: Center(
            child: Text(
              'Hey there',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          onTap: () {
            setState(() {
              backgroundColor = colors.elementAt(random.nextInt(colors.length));
            });
          },
        ),
        backgroundColor: backgroundColor,
        floatingActionButton: FloatingActionButton(
          child: Text('code'),
          onPressed: () => {
            launch('https://github.com/OpenUEyes/sols_task')
          },
          backgroundColor: Colors.blueAccent,
        ));
  }
}

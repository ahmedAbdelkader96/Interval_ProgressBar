import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intervalprogressbar/intervalprogressbar.dart';

Widget buildProgressBars() {
  return Scaffold(
    appBar: AppBar(
      title: Text("IntervalProgressBar"),
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent,
    ),
    body: Center(
        child: Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildHorizontal(),
          //SizedBox(height: 20),
          buildVertical(),
          //SizedBox(height: 20),
          buildCircle(),
        ],
      ),
    )),
  );
}

Widget buildHorizontal() => IntervalProgressBar(
    direction: IntervalProgressDirection.horizontal,
    max: 10,
    progress: 2,
    intervalSize: 2,
    size: Size(400, 10),
    highlightColor: Colors.red,
    defaultColor: Colors.grey,
    intervalColor: Colors.transparent,
    intervalHighlightColor: Colors.transparent,
    intervalDegrees: 50,
    reverse: false,
    radius: 5);

Widget buildVertical() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [1, 7, 6, 3, 5, 1, 9, 10, 2, 10].map<Widget>((i) {
      return Padding(
          padding: EdgeInsets.only(right: 10),
          child: IntervalProgressBar(
              direction: IntervalProgressDirection.vertical,
              max: 10,
              progress: i,
              intervalSize: 2,
              size: Size(12, 200),
              highlightColor: Colors.red,
              defaultColor: Colors.grey,
              intervalColor: Colors.transparent,
              intervalHighlightColor: Colors.transparent,
              reverse: true,
              radius: 5));
    }).toList());

Widget buildCircle() => IntervalProgressBar(
      direction: IntervalProgressDirection.circle,
      max: 10,
      progress: 2,
      intervalSize: 2,
      size: Size(200, 200),
      highlightColor: Colors.red,
      defaultColor: Colors.grey,
      intervalColor: Colors.transparent,
      intervalHighlightColor: Colors.transparent,
      reverse: true,
      radius: 5,
      intervalDegrees: 5,
      strokeWith: 5,
    );

void main() {
  final app = MaterialApp(debugShowCheckedModeBanner: false,home: buildProgressBars());
  runApp(app);
}

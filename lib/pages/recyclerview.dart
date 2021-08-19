import 'package:flutter/material.dart';
List<String> course = [
  "c",
  "c++",
  "java",
  "kotlin",
  "objective c",
  "swift",
  "php"
];


class Recyclerviewpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Courses"),
        ),
        body: Container(
            color: Colors.white10,
            padding: EdgeInsets.all(16.0),
            child: Recyclerview(course)
        ),
      ),
    );
  }
}


class Recyclerview extends StatelessWidget {
  final List<String> course;

  Recyclerview(this.course);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: course.length,
      itemBuilder: (context, pos) {
        return Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                child: Text(course[pos], style: TextStyle(
                  fontSize: 18.0,
                  height: 1.6,
                ),),
              ),
            )
        );
      },
    );
  }
}
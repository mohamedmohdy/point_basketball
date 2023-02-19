// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(point_counter());
}

class point_counter extends StatefulWidget {
  @override
  State<point_counter> createState() => _point_counterState();
}

class _point_counterState extends State<point_counter> {
  int point_team_a = 0;

  int point_team_b = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.sports_basketball,
          ),
          title: Center(
            child: Text(
              'Point Counter',
            ),
          ),
          backgroundColor: Color(0xffc04b42),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '$point_team_a',
                            style: TextStyle(
                              fontSize: 90,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                point_team_a++;
                                print(point_team_a);
                              });
                            },
                            child: Text(
                              'Add1 point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffd8880f),
                                minimumSize: Size(0, 48),
                                padding: EdgeInsets.all(10)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                point_team_a = point_team_a + 2;
                                print(point_team_a);
                              });
                            },
                            child: Text(
                              'Add2 point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffd8880f),
                                minimumSize: Size(0, 48),
                                padding: EdgeInsets.all(10)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                point_team_a = point_team_a + 3;
                                print(point_team_a);
                              });
                            },
                            child: Text(
                              'Add3 point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffd8880f),
                                minimumSize: Size(0, 48),
                                padding: EdgeInsets.all(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            '$point_team_b',
                            style: TextStyle(
                              fontSize: 90,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                point_team_b++;
                                print(point_team_b);
                              });
                            },
                            child: Text(
                              'Add1 point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffd8880f),
                                minimumSize: Size(0, 48),
                                padding: EdgeInsets.all(10)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                point_team_b = point_team_b + 2;
                                print(point_team_b);
                              });
                            },
                            child: Text(
                              'Add2 point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffd8880f),
                                minimumSize: Size(0, 48),
                                padding: EdgeInsets.all(10)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                point_team_b = point_team_b + 3;
                                print(point_team_b);
                              });
                            },
                            child: Text(
                              'Add3 point',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffd8880f),
                                minimumSize: Size(0, 48),
                                padding: EdgeInsets.all(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    point_team_b = 0;
                    point_team_a = 0;
                  });
                },
                child: Text(
                  'ReseT the points',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffd8880f),
                    minimumSize: Size(0, 48),
                    padding: EdgeInsets.all(10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

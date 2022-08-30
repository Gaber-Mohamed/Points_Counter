import 'package:flutter/material.dart';

void main() => runApp(Pointer());

class Pointer extends StatefulWidget {
  @override
  State<Pointer> createState() => _PointerState();
}

class _PointerState extends State<Pointer> {
  int TeamApointer = 0;
  int TeamBpointer = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Points Counter',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '$TeamApointer',
                      style:
                          TextStyle(fontSize: 100, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                              TeamApointer++;
                            setState(() {
                              
                            });
                          },
                          child: Text(
                            'Add 1 point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(130, 50))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamApointer += 2;
                          });
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(130, 50))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              TeamApointer += 3;
                            });
                          },
                          child: Text(
                            'Add 3 point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(130, 50))),
                    )
                  ],
                ),
                Container(
                  height: 400,
                  child: VerticalDivider(
                      color: Colors.grey, thickness: 1, endIndent: 10),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '$TeamBpointer',
                      style:
                          TextStyle(fontSize: 100, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              TeamBpointer++;
                            });
                          },
                          child: Text(
                            'Add 1 point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(130, 50))),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            TeamBpointer += 2;
                          });
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(130, 50))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              TeamBpointer += 3;
                            });
                          },
                          child: Text(
                            'Add 3 point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(130, 50))),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    TeamApointer = 0;
                    TeamBpointer = 0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange, minimumSize: Size(160, 40))),
          ],
        ),
      ),
    );
  }
}

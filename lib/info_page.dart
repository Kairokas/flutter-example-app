import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfoPageState();
  }
}

class _InfoPageState extends State<InfoPage> {
  bool switchLight = false;
  double redBlockHeight = 100;
  double blueBlockHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Info Page'),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            const Text("Punane/must: viipa alla et suuremaks teha. Sinine koht: viipa vasakule, et tagasi saada."),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onPanUpdate: (details) {
                        // if (details.delta.dy < 0) {}
                        setState(() {
                          redBlockHeight += details.delta.dy;
                          blueBlockHeight += details.delta.dy;
                        });
                      },
                      child: Row(children: [
                        Container(
                            color: Colors.red,
                            width: 100,
                            height: redBlockHeight,
                            constraints: const BoxConstraints(
                              minHeight: 100,
                              maxHeight: 500,
                            )),
                        Container(
                            color: Colors.black,
                            width: 100,
                            height: blueBlockHeight,
                            constraints: const BoxConstraints(
                              minHeight: 100,
                              maxHeight: 500,
                            )),
                      ]),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Back'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Switch(
                        value: switchLight,
                        onChanged: (bool newBool) {
                          setState(() {
                            switchLight = newBool;
                          });
                        }),
                    IconTheme(
                      data: IconThemeData(
                        color: switchLight ? Colors.amber : Colors.black,
                      ),
                      child: const Icon(Icons.lightbulb),
                    )
                  ],
                ),
              ],
            ),
            Expanded(
              // Add an Expanded widget
              child: GestureDetector(
                onHorizontalDragUpdate: (details) {
                  if (details.delta.dx < 0) {
                    Navigator.of(context).pop();
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  width: double.infinity,
                  // Set the width to the maximum screen size
                ),
              ),
            ),
          ],
        ),
    );
  }
}

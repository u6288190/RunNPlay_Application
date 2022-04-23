// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

var situp = 0, pushup = 0, squadjump = 0, running = 0.0;
var situpcheck = false,
    pushupcheck = false,
    squadjumpcheck = false,
    runningcheck = false;

class _CounterPageState extends State<CounterPage> {
  late ShakeDetector detector;
  @override
  void initState() {
    super.initState();
    detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        setState(() {
          if (situpcheck == true) {
            situp++;
          }
          if (pushupcheck == true) {
            pushup++;
          }
          if (squadjumpcheck == true) {
            squadjump++;
          }
          if (runningcheck == true) {
            running++;
          }
        });
      },
    );
    detector.startListening();
  }

  @override
  void dispose() {
    super.dispose();
    detector.stopListening();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let's Exercise!",
                style: Theme.of(context).textTheme.headline1,
              ),
              Image.asset(
                "images/pose.png",
                width: 150,
                height: 50,
                fit: BoxFit.cover,
              ),
              Text(
                'Sit Up: $situp times',
                style: Theme.of(context).textTheme.headline1,
              ),
              ListTile(
                //contentPadding: EdgeInsets.all(<some value here>),//change for side padding
                title: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      child:
                          situpcheck ? const Text('Stop') : const Text('Start'),
                      onPressed: () {
                        setState(() {
                          situpcheck = !situpcheck;
                          pushupcheck = false;
                          squadjumpcheck = false;
                          runningcheck = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 17, 79, 19),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      child: const Text('Shake'),
                      onPressed: () {
                        setState(() {
                          if (situpcheck == true) {
                            situp++;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 17, 79, 19),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Push Up: $pushup times',
                style: Theme.of(context).textTheme.headline1,
              ),
              ListTile(
                //contentPadding: EdgeInsets.all(<some value here>),//change for side padding
                title: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      child: pushupcheck
                          ? const Text('Stop')
                          : const Text('Start'),
                      onPressed: () {
                        setState(() {
                          situpcheck = false;
                          pushupcheck = !pushupcheck;
                          squadjumpcheck = false;
                          runningcheck = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 17, 79, 19),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      child: const Text('Shake'),
                      onPressed: () {
                        setState(() {
                          if (pushupcheck == true) {
                            pushup++;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 17, 79, 19),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Squad Jump: $squadjump times',
                style: Theme.of(context).textTheme.headline1,
              ),
              ListTile(
                //contentPadding: EdgeInsets.all(<some value here>),//change for side padding
                title: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      child: squadjumpcheck
                          ? const Text('Stop')
                          : const Text('Start'),
                      onPressed: () {
                        setState(() {
                          situpcheck = false;
                          pushupcheck = false;
                          squadjumpcheck = !squadjumpcheck;
                          runningcheck = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 17, 79, 19),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      child: const Text('Shake'),
                      onPressed: () {
                        setState(() {
                          if (squadjumpcheck == true) {
                            squadjump++;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 17, 79, 19),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Running: $running meters.',
                style: Theme.of(context).textTheme.headline1,
              ),
              ListTile(
                //contentPadding: EdgeInsets.all(<some value here>),//change for side padding
                title: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      child: runningcheck
                          ? const Text('Stop')
                          : const Text('Start'),
                      onPressed: () {
                        setState(() {
                          situpcheck = false;
                          pushupcheck = false;
                          squadjumpcheck = false;
                          runningcheck = !runningcheck;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 17, 79, 19),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      child: const Text('Shake'),
                      onPressed: () {
                        setState(() {
                          if (runningcheck == true) {
                            running += 0.25;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 17, 79, 19),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                //contentPadding: EdgeInsets.all(<some value here>),//change for side padding
                title: Row(
                  children: <Widget>[
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      child: const Text('Reset'),
                      onPressed: () {
                        setState(() {
                          situp = 0;
                          pushup = 0;
                          squadjump = 0;
                          running = 0.0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      child: const Text('Back'),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/Workout');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                child: const Text('Back to Body Menu Page'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/BodyMenu');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

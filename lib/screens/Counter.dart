// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

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
                width: 250,
                height: 100,
                fit: BoxFit.cover,
              ),
              Text(
                'Sit Up: 0 times',
                style: Theme.of(context).textTheme.headline1,
              ),
              ElevatedButton(
                child: const Text('Start'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 17, 79, 19),
                ),
              ),
              Text(
                'Push Up: 0 times',
                style: Theme.of(context).textTheme.headline1,
              ),
              ElevatedButton(
                child: const Text('Start'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 17, 79, 19),
                ),
              ),
              Text(
                'Squad Jump: 0 times',
                style: Theme.of(context).textTheme.headline1,
              ),
              ElevatedButton(
                child: const Text('Start'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 17, 79, 19),
                ),
              ),
              Text(
                'Running: 0 meters.',
                style: Theme.of(context).textTheme.headline1,
              ),
              ElevatedButton(
                child: const Text('Start'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 17, 79, 19),
                ),
              ),
              const SizedBox(
                height: 20,
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

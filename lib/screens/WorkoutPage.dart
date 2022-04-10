// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({Key? key}) : super(key: key);

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
                'Exercise Formular',
                style: Theme.of(context).textTheme.headline1,
              ),
              Image.asset(
                "images/Dumbell.png",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
              Text(
                'Name: Man',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'BMI: 22.8 (Normal)',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Sit Up: 34 times',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Push Up: 22 times',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Squad Jump: 15 times)',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Running: 60 minutes)',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                child: const Text('Workout'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/Counter');
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

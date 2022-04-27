// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  final int bodytype;
  const WorkoutPage({Key? key, item, required this.bodytype}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _program = '';
    var _situp = 0, _pushup = 0, _squadjump = 0, _running = 0;
    if (bodytype == 0) {
      _program = 'Body Builder';
      _situp = 100;
      _pushup = 50;
      _squadjump = 80;
      _running = 60;
    } else if (bodytype == 1) {
      _program = 'Average';
      _situp = 80;
      _pushup = 30;
      _squadjump = 60;
      _running = 30;
    } else if (bodytype == 2) {
      _program = 'Diet';
      _situp = 50;
      _pushup = 20;
      _squadjump = 30;
      _running = 120;
    } else if (bodytype == 3) {
      _program = 'Healthy';
      _situp = 50;
      _pushup = 30;
      _squadjump = 20;
      _running = 80;
    } else if (bodytype == 4) {
      _program = 'Cardio';
      _situp = 50;
      _pushup = 15;
      _squadjump = 15;
      _running = 120;
    } else if (bodytype == 5) {
      _program = 'Fat burn';
      _situp = 40;
      _pushup = 20;
      _squadjump = 30;
      _running = 150;
    } else if (bodytype == 6) {
      _program = 'Therapy';
      _situp = 15;
      _pushup = 10;
      _squadjump = 15;
      _running = 30;
    } else if (bodytype == 7) {
      _program = 'Daily Workout';
      _situp = 60;
      _pushup = 30;
      _squadjump = 30;
      _running = 60;
    } else if (bodytype == 8) {
      _program = 'Food Routines';
      _situp = 20;
      _pushup = 10;
      _squadjump = 10;
      _running = 30;
    } else {
      _program = 'unknown';
      _situp = 0;
      _pushup = 0;
      _squadjump = 0;
      _running = 0;
    }

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
                'Program ID: $bodytype',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Program: $_program',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Sit Up: $_situp times',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Push Up: $_pushup times',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Squad Jump: $_squadjump times',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Running: $_running minutes',
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

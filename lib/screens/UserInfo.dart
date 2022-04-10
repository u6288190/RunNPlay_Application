// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({Key? key}) : super(key: key);

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
                'User Information',
                style: Theme.of(context).textTheme.headline1,
              ),
              Image.asset(
                "images/health.png",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
              Text(
                'Name: Man',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Age: 21 years.',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Weight: 74 Kg.',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Height: 180 Cm.',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'BMI: 22.8 (Normal)',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text('Browse an exercise program'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/BodyMenu');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                child: const Text('Logout'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

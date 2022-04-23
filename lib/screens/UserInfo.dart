// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  String name, gender;
  String weight, height;
  UserInfoPage(
      {Key? key,
      @required this.name = '',
      @required this.gender = '',
      @required this.weight = '',
      @required this.height = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bmi =
        (double.parse(weight) / (double.parse(height) * double.parse(height))) *
            10000;
    double finalbmi = double.parse((bmi).toStringAsFixed(1));
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
                'Name: $name',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Gender: $gender',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Weight: $weight Kg.',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Height: $height Cm.',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'BMI: $finalbmi',
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

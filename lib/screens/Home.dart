// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                'Run N Play',
                style: Theme.of(context).textTheme.headline1,
              ),
              Image.asset(
                "images/RunNPlay.png",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
              Text(
                'Run N Play is the application that provide an exercise formular for users and help them to exercise.',
                style: Theme.of(context).textTheme.headline1,
              ),
              ElevatedButton(
                child: const Text('Enter user information'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/Register');
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

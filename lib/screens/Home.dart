// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Nickname',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text('ENTER'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/UserInfo');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text('Register'),
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

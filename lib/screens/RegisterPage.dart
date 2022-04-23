// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:runnplayapp/screens/UserInfo.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _name = TextEditingController();
    TextEditingController _gender = TextEditingController();
    TextEditingController _weight = TextEditingController();
    TextEditingController _height = TextEditingController();
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
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              TextFormField(
                controller: _name,
                decoration: const InputDecoration(
                  hintText: 'Nickname',
                ),
              ),
              TextFormField(
                controller: _gender,
                decoration: const InputDecoration(
                  hintText: 'Gender',
                ),
              ),
              TextFormField(
                controller: _weight,
                decoration: const InputDecoration(
                  hintText: 'Weight',
                ),
              ),
              TextFormField(
                controller: _height,
                decoration: const InputDecoration(
                  hintText: 'Height',
                ),
                obscureText: false,
              ),
              const SizedBox(
                height: 0,
              ),
              ElevatedButton(
                child: const Text('ENTER'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserInfoPage(
                          name: _name.text,
                          gender: _gender.text,
                          weight: _weight.text,
                          height: _height.text)));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
              ElevatedButton(
                child: const Text('Back'),
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

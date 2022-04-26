// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shake/shake.dart';
import 'package:runnplayapp/models/cart.dart';
import 'package:runnplayapp/models/catalog.dart';
import 'package:runnplayapp/theme/theme.dart';
import 'package:runnplayapp/screens/Home.dart';
import 'package:runnplayapp/screens/UserInfo.dart';
import 'package:runnplayapp/screens/BodyMenuPage.dart';
import 'package:runnplayapp/screens/RegisterPage.dart';
import 'package:runnplayapp/screens/MyListPage.dart';
import 'package:runnplayapp/screens/WorkoutPage.dart';
import 'package:runnplayapp/screens/Counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
      providers: [
        // In this sample app, CatalogModel never changes, so a simple Provider
        // is sufficient.
        Provider(create: (context) => CatalogModel()),
        // CartModel is implemented as a ChangeNotifier, which calls for the use
        // of ChangeNotifierProvider. Moreover, CartModel depends
        // on CatalogModel, so a ProxyProvider is needed.
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (context) => CartModel(),
          update: (context, catalog, cart) {
            if (cart == null) throw ArgumentError.notNull('cart');
            cart.catalog = catalog;
            return cart;
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/UserInfo': (context) =>
              UserInfoPage(name: '', gender: '', weight: '0.0', height: '0.0'),
          '/Register': (context) => const RegisterPage(),
          '/BodyMenu': (context) => const BodyMenuPage(),
          '/MyList': (context) => const MyListPage(),
          '/Workout': (context) => const WorkoutPage(
                bodytype: 0,
              ),
          '/Counter': (context) => const CounterPage(),
        },
      ),
    );
  }
}

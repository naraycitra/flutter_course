import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './profiles_manager.dart';

void main() {
  // debugPaintBaselinesEnabled = true;
  // debugPaintSizeEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn Flutter'),
        ),
        body: ProfilesManager(
          startingProfile: 'Cool Profile',
        ),
      ),
    );
  }
}

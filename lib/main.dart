import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/explore_trip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return const MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      home: ExploreTripPage(),
    );
  }
}
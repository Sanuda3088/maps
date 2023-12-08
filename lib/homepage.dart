import 'package:flutter/material.dart';
import 'package:maps/Starting_Points/point_01/ending_points_01.dart';
import 'package:maps/Starting_Points/point_02/ending_points_02.dart';
import 'package:maps/Starting_Points/point_03/ending_points_03.dart';
import 'package:maps/Starting_Points/point_04/ending_points_04.dart';
import 'package:maps/Starting_Points/point_05/ending_points_05.dart';
import 'package:maps/map.dart';
import 'package:maps/overall_route/route01.dart';
import 'package:maps/overall_route/route02.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MapPage()));
                },
                icon: const Icon(Icons.location_on_rounded),
                label: const Text('Current Location')),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R1Page()));
                },
                icon: const Icon(Icons.looks_one_rounded),
                label: const Text('Polyline 01')),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => R2Page()));
                },
                icon: const Icon(Icons.looks_two_rounded),
                label: const Text('Polyline 02')),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EndingPoints01()));
                },
                icon: const Icon(Icons.looks_one_rounded),
                label: const Text('Starting Point 01')),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EndingPoints02()));
                },
                icon: const Icon(Icons.looks_two_rounded),
                label: const Text('Starting Point 02')),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EndingPoints03()));
                },
                icon: const Icon(Icons.looks_3_rounded),
                label: const Text('Starting Point 03')),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EndingPoints04()));
                },
                icon: const Icon(Icons.looks_4_rounded),
                label: const Text('Starting Point 04')),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EndingPoints05()));
                },
                icon: const Icon(Icons.looks_5_rounded),
                label: const Text('Starting Point 05')),
          ],
        ));
  }
}

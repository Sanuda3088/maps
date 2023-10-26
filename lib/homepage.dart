import 'package:flutter/material.dart';
import 'package:maps/map.dart';
import 'package:maps/polylines/poly02.dart';


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
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ElevatedButton.icon(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MapPage()
                )
            );
          }, icon: const Icon(Icons.location_on_rounded), label: const Text('Current Location')),

          ElevatedButton.icon(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MapPage()
                )
            );
          }, icon: const Icon(Icons.looks_one_rounded), label: const Text('Polyline 01')),

          ElevatedButton.icon(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const P2Page()
                )
            );
          }, icon: const Icon(Icons.looks_two_rounded), label: const Text('Polyline 02')),
        ],
      )
    );
  }
}

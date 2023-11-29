import 'package:flutter/material.dart';

class MapTile extends StatelessWidget {
  final String imageName;
  final String destination;
  final String distance;
  final String time;

  const MapTile({super.key, required this.imageName, required this.destination, required this.distance, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black54,
        ),
        child: Column(
          children: [
            Image.asset(imageName), 
            Text(destination),
            Text(distance),
            Text(time),
            ],
        ),
      ),
    );
  }
}

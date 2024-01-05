import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps/coordinates/point01_Coordinates.dart';

import '../poly01.dart';

class R1Page extends StatefulWidget {
  @override
  _R1PageState createState() => _R1PageState();
}

class _R1PageState extends State<R1Page> {
  late GoogleMapController _controller;
  static const LatLng _initialLocation =
      LatLng(6.802005081000061, 80.80740669200003);

  List<LatLng> polylineCoordinates01 = polylineCoordinates.route1;
  final Set<Polyline> _polyline01 = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route 2'),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: _initialLocation,
          zoom: 18.0,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
          _updatePolyline01();
        },
        polylines: _polyline01,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const P1Page(),
            ),
          );
        },
        child: const Icon(Icons.start_rounded),
      ),
    );
  }

  void _updatePolyline01() {
    setState(() {
      _polyline01.clear();
      _polyline01.add(Polyline(
        polylineId: const PolylineId('polyline_01'),
        color: const Color.fromARGB(255, 40, 150, 241),
        width: 10,
        points: polylineCoordinates01,
      ));
    });
  }
}

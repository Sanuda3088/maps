import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps/coordinates/point01_Coordinates.dart';
import 'package:maps/controllers/poly02.dart';

class R2Page extends StatefulWidget {
  @override
  _R2PageState createState() => _R2PageState();
}

class _R2PageState extends State<R2Page> {
  late GoogleMapController _controller;
  static const LatLng _initialLocation =
      LatLng(7.0809558615927495, 80.02046294561433);

  List<LatLng> polylineCoordinates02 = polylineCoordinates.route2;
  final Set<Polyline> _polyline02 = {};

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
          _updatePolyline02();
        },
        polylines: _polyline02,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const P2Page(),
            ),
          );
        },
        child: const Icon(Icons.start_rounded),
      ),
    );
  }

  void _updatePolyline02() {
    setState(() {
      _polyline02.clear();
      _polyline02.add(Polyline(
        polylineId: const PolylineId('polyline_02'),
        color: Colors.red,
        width: 10,
        points: polylineCoordinates02,
      ));
    });
  }
}

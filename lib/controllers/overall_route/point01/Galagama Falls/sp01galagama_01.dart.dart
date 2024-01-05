/*import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps/Coordinates.dart';


class sp01galagama_01Page extends StatefulWidget {
  @override
  _sp01galagama_01PageState createState() => _sp01galagama_01PageState();
}

class _sp01galagama_01PageState extends State<sp01galagama_01Page> {
  late GoogleMapController _controller;
  static const LatLng _initialLocation =
      LatLng(6.770933347000039, 80.77191361900003);

  List<LatLng> polylineCoordinates01 = polylineCoordinates.sp01galagama_01;
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
*/
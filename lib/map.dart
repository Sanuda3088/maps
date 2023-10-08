import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as location;
/*import 'package:flutter_map/flutter_map.dart';*/
import 'package:geojson/geojson.dart';



class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final LatLng _initialCameraPosition = const LatLng(20.5937, 78.9629);
  late GoogleMapController _controller;
  final location.Location _location = location.Location();
  MapType _mapType = MapType.normal;

  // Define a list of LatLng points for your polyline
  List<LatLng> polylineCoordinates = [
    LatLng(7.0809558615927495, 80.02046294561433), // Point 1
    LatLng(7.080413079258999, 80.02045041073958), // Point 2
    // Add more points as needed
  ];

  // Create a Polyline object with the polyline details
  Set<Polyline> _polylines = {};

  // Track your location
  void _onMapCreated(GoogleMapController cntrl) {
    _controller = cntrl;
    _location.onLocationChanged.listen((l) {
      _controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(l.latitude!, l.longitude!), zoom: 19),
      ));
      // Update the polylines
      _updatePolylines();
    });
  }

  // Function to update polylines
  void _updatePolylines() {
    setState(() {
      _polylines.clear();
      _polylines.add(Polyline(
        polylineId: const PolylineId('polyline_id'),
        color: Colors.red,
        width: 10,
        points: polylineCoordinates,
      ));
    });
  }

  void _onCurrentLocationButtonPressed() async {
    location.LocationData currentLocation = await _location.getLocation();
    _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(currentLocation.latitude!, currentLocation.longitude!),
      zoom: 16,
    )));
  }

  void _onMapTypeButtonPressed() {
    if (_mapType == MapType.normal) {
      _onMapTypeChanged(MapType.satellite);
    } else if (_mapType == MapType.satellite) {
      _onMapTypeChanged(MapType.hybrid);
    } else {
      _onMapTypeChanged(MapType.normal);
    }
  }

  void _onMapTypeChanged(MapType type) {
    setState(() {
      _mapType = type;
    });
  }
  
  //from here

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            GoogleMap(
              zoomControlsEnabled: false,
              mapType: _mapType,
              initialCameraPosition: CameraPosition(target: _initialCameraPosition),
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
              polylines: _polylines, // Use the _polylines set here
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width - (w * 0.18),
                top: MediaQuery.of(context).size.height - (h / 2.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: _onCurrentLocationButtonPressed,
                    child: const Icon(Icons.my_location),
                  ),
                  const SizedBox(height: 5),
                  FloatingActionButton(
                    onPressed: _onMapTypeButtonPressed,
                    child: const Icon(Icons.layers),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

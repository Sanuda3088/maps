import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as location;
import 'package:maps/coordinates/point05_Coordinates.dart';
import 'package:provider/provider.dart';
import 'dart:async' show Future;

class LocationProvider118 extends ChangeNotifier {
  LatLng? _currentLocation;

  LatLng? get currentLocation => _currentLocation;

  void updateCurrentLocation(LatLng location) {
    _currentLocation = location;
    notifyListeners();
  }
}

class sp05galagama_01Page extends StatefulWidget {
  const sp05galagama_01Page({super.key});

  @override
  State<sp05galagama_01Page> createState() => _sp05galagama_01PageState();
}

class _sp05galagama_01PageState extends State<sp05galagama_01Page> {
  late GoogleMapController _controller;
  late LocationProvider118 _locationProvider;
  final location.Location _location = location.Location();
  MapType _mapType = MapType.normal;
  bool _centerOnLocation = true;

  // Define a list of LatLng points for your polyline
  List<LatLng> polylineCoordinates02 = polylineCoordinatespoint05.sp05galagama_01;

  // Create a Polyline object with the polyline details
  final Set<Polyline> _polyline02 = {};

  @override
  void initState() {
    super.initState();
    _locationProvider = Provider.of<LocationProvider118>(context, listen: false);
  }

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
              //zoomControlsEnabled: false,
              myLocationButtonEnabled: false,
              mapType: _mapType,
              initialCameraPosition: const CameraPosition(
                target: LatLng(6.770933347000039, 80.77191361900003),
              ),
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
              polylines: _polyline02, // Use the _polylines set here
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

  void _onMapCreated(GoogleMapController cntrl) {
    _controller = cntrl;
    _location.onLocationChanged.listen((l) {
      if (_locationProvider.currentLocation == null) {
        _locationProvider
            .updateCurrentLocation(LatLng(l.latitude!, l.longitude!));
        _controller.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: _locationProvider.currentLocation!, zoom: 16),
        ));
        /*if (_locationProvider.currentLocation == null) {
        _locationProvider
            .updateCurrentLocation(LatLng(l.latitude!, l.longitude!));
      }
      if (_locationProvider.currentLocation != null && _centerOnLocation) {
        _controller.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: _locationProvider.currentLocation!, zoom: 19),
        ));*/
        // Update the polylines
        //_updatePolyline01();
        _updatePolyline02();
        _centerOnLocation = false;
      }
    });
  }

  // Function to update polyline 02
  void _updatePolyline02() {
    setState(() {
      _polyline02.clear();
      _polyline02.add(Polyline(
        polylineId: const PolylineId('polyline_02'),
        color: const Color.fromARGB(255, 48, 142, 229),
        width: 10,
        points: polylineCoordinates02,
      ));
    });
  }

  void _onCurrentLocationButtonPressed() async {
    location.LocationData? currentLocation = await _getLocation();
    if (currentLocation != null) {
      _locationProvider.updateCurrentLocation(
          LatLng(currentLocation.latitude!, currentLocation.longitude!));
      _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(currentLocation.latitude!, currentLocation.longitude!),
        zoom: 16,
      )));
    }
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

  Future<location.LocationData?> _getLocation() async {
    try {
      return await _location.getLocation();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}

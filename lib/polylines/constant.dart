import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as location;
import 'package:provider/provider.dart';

class LocationProvider1 extends ChangeNotifier {
  LatLng? _currentLocation;

  LatLng? get currentLocation => _currentLocation;

  void updateCurrentLocation(LatLng location) {
    _currentLocation = location;
    notifyListeners();
  }
}

class LocationProvider2 extends ChangeNotifier {
  LatLng? _currentLocation;

  LatLng? get currentLocation => _currentLocation;

  void updateCurrentLocation(LatLng location) {
    _currentLocation = location;
    notifyListeners();
  }
}

class CommonMapPage extends StatefulWidget {
  final List<LatLng> polylineCoordinates;
  final String polylineId;
  final LatLng initialCameraPosition;

  const CommonMapPage({super.key, 
    required this.polylineCoordinates,
    required this.polylineId,
    required this.initialCameraPosition,
  });

  @override
  State<CommonMapPage> createState() => _CommonMapPageState();
}

class _CommonMapPageState extends State<CommonMapPage> {
  late GoogleMapController _controller;
  //
  late LocationProvider1 _locationProvider1;
  late LocationProvider2 _locationProvider2;
  final location.Location _location = location.Location();
  MapType _mapType = MapType.normal;
  bool _centerOnLocation = true;

  @override
  void initState() {
    super.initState();
    //
    if (widget.polylineId == 'polyline_01') {
      _locationProvider1 = Provider.of<LocationProvider1>(context, listen: false);
    } else if (widget.polylineId == 'polyline_02') {
      _locationProvider2 = Provider.of<LocationProvider2>(context, listen: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Your common map page UI code here
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
              myLocationButtonEnabled: false,
              mapType: _mapType,
              initialCameraPosition: CameraPosition(
                target: widget.polylineCoordinates.first,
              ),
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
              polylines: {
                Polyline(
                  polylineId: PolylineId(widget.polylineId),
                  color: Color.fromARGB(255, 21, 128, 243),
                  width: 5,
                  points: widget.polylineCoordinates,
                ),
              },
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
    //
    _location.onLocationChanged.listen((l) {
      if (widget.polylineId == 'polyline_01' && _locationProvider1.currentLocation == null) {
        _locationProvider1
            .updateCurrentLocation(LatLng(l.latitude!, l.longitude!));
      } else if (widget.polylineId == 'polyline_02' && _locationProvider2.currentLocation == null) {
        _locationProvider2
            .updateCurrentLocation(LatLng(l.latitude!, l.longitude!));
      }
      if (widget.polylineId == 'polyline_01' && _locationProvider1.currentLocation != null && _centerOnLocation) {
        _controller.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: _locationProvider1.currentLocation!, zoom: 19),
        ));
        _centerOnLocation = false;
      } else if (widget.polylineId == 'polyline_02' && _locationProvider2.currentLocation != null && _centerOnLocation) {
        _controller.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(target: _locationProvider2.currentLocation!, zoom: 19),
        ));
        _centerOnLocation = false;
      }
    });
  }

  void _onCurrentLocationButtonPressed() async {
    location.LocationData? currentLocation = await _getLocation();
    if (currentLocation != null) {
      //
      if (widget.polylineId == 'polyline_01') {
        _locationProvider1.updateCurrentLocation(
            LatLng(currentLocation.latitude!, currentLocation.longitude!));
      } else if (widget.polylineId == 'polyline_02') {
        _locationProvider2.updateCurrentLocation(
            LatLng(currentLocation.latitude!, currentLocation.longitude!));
      }
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

import 'package:flutter/material.dart';
import 'package:maps/Starting_Points/point_01/ending_points_01.dart';
import 'package:maps/Starting_Points/point_02/ending_points_02.dart';
//import 'package:maps/Starting_Points/point_02/ending_points_02.dart';
//import 'package:maps/Starting_Points/point_03/ending_points_03.dart';
//import 'package:maps/Starting_Points/point_04/ending_points_04.dart';
//import 'package:maps/Starting_Points/point_05/ending_points_05.dart';
import 'package:maps/controllers/full_map.dart';
import 'package:maps/controllers/overall_route/route01.dart';
import 'package:maps/controllers/overall_route/route02.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleMapController? _mapController;
  Set<Marker> _markers = Set();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          centerTitle: true,
          backgroundColor: Colors.grey.shade900,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target:
                      LatLng(6.8020628, 80.8073284), // Initial camera position
                  zoom: 12.0,
                ),
                onMapCreated: (GoogleMapController controller) {
                  setState(() {
                    _mapController = controller;

                    // Add markers for starting points (green triangles)
                    _addMarker(
                        6.7664473300000623,
                        80.781078363000063,
                        'Starting Point 1',
                        'Description 1',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueGreen));
                    _addMarker(
                        6.7778797580000401,
                        80.729731983000079,
                        'Starting Point 2',
                        'Description 2',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueGreen));
                    _addMarker(
                        6.8713807530000395,
                        80.798747280000043,
                        'Starting Point 3',
                        'Description 3',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueGreen));
                    _addMarker(
                        6.8277562340000486,
                        80.751451985000074,
                        'Starting Point 4',
                        'Description 4',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueGreen));
                    _addMarker(
                        6.8019886760000645,
                        80.807478585000069,
                        'Starting Point 5',
                        'Description 5',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueGreen));

                    // Add markers for ending points (red dots)
                    _addMarker(
                        6.7709333470000388,
                        80.771913619000031,
                        'Ending Point 1',
                        'Description 1',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed));
                    _addMarker(
                        6.7924809736069998,
                        80.789888917793093,
                        'Ending Point 2',
                        'Description 2',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed));
                    _addMarker(
                        6.8286937350000585,
                        80.783385218000035,
                        'Ending Point 3',
                        'Description 3',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed));
                    _addMarker(
                        6.8508089670000345,
                        80.778677849000076,
                        'Ending Point 4',
                        'Description 4',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed));
                    _addMarker(
                        6.8685739600000488,
                        80.796247111000071,
                        'Ending Point 5',
                        'Description 5',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed));
                    _addMarker(
                        6.7808460360000709,
                        80.793980455000053,
                        'Ending Point 6',
                        'Description 6',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed));
                    _addMarker(
                        6.8110263790000545,
                        80.782098984000072,
                        'Ending Point 7',
                        'Description 7',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed));
                    _addMarker(
                        6.7990785400000391,
                        80.766746687000079,
                        'Ending Point 8',
                        'Description 8',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed));
                    _addMarker(
                        6.7853979070000605,
                        80.800282236000044,
                        'Ending Point 9',
                        'Description 9',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed));
                    _addMarker(
                        6.7968232050000665,
                        80.740325608000035,
                        'Ending Point 10',
                        'Description 10',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed));
                    _addMarker(
                        6.7639118380000696,
                        80.754171072000076,
                        'Ending Point 11',
                        'Description 11',
                        BitmapDescriptor.defaultMarkerWithHue(
                            BitmapDescriptor.hueRed));
                  });
                },
                markers: _markers,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FullMapPage()));
                        },
                        icon: const Icon(Icons.location_on_rounded),
                        label: const Text('Current Location')),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => R1Page()));
                        },
                        icon: const Icon(Icons.looks_one_rounded),
                        label: const Text('Polyline 01')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => R2Page()));
                        },
                        icon: const Icon(Icons.looks_two_rounded),
                        label: const Text('Polyline 02')),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EndingPoints01()));
                        },
                        icon: const Icon(Icons.looks_one_rounded),
                        label: const Text('Starting Point 01')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EndingPoints02()));
                        },
                        icon: const Icon(Icons.looks_two_rounded),
                        label: const Text('Starting Point 02')),
                    ElevatedButton.icon(
                        onPressed: () {
                          /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EndingPoints03()));*/
                        },
                        icon: const Icon(Icons.looks_3_rounded),
                        label: const Text('Starting Point 03')),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {
                          /* Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EndingPoints04()));*/
                        },
                        icon: const Icon(Icons.looks_4_rounded),
                        label: const Text('Starting Point 04')),
                    ElevatedButton.icon(
                        onPressed: () {
                          /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EndingPoints05()));*/
                        },
                        icon: const Icon(Icons.looks_5_rounded),
                        label: const Text('Starting Point 05')),
                  ],
                )
              ],
            ),
          ],
        ));
  }

  void _addMarker(double lat, double lng, String title, String snippet, BitmapDescriptor icon) {
    _markers.add(
      Marker(
        markerId: MarkerId('$lat,$lng'),
        position: LatLng(lat, lng),
        infoWindow: InfoWindow(
          title: title,
          snippet: snippet,
        ),
        icon: icon,
      ),
    );
  }
}

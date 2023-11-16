import 'constant.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class P2Page extends CommonMapPage {
  P2Page() : super(polylineCoordinates: [
    const LatLng(7.073402703308713, 80.02080016336816),
    const LatLng(7.072804582683621, 80.02072667995125),
    // Add more points as needed
  ],
      polylineId: 'polyline_02',
      initialCameraPosition: const LatLng(7.0809558615927495, 80.02046294561433)
  );
}

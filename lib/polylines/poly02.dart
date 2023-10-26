import 'constant.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class P2Page extends CommonMapPage {
  P2Page() : super(polylineCoordinates: [
    const LatLng(7.0809558615927495, 80.02046294561433),
    const LatLng(7.080413079258999, 80.02045041073958),
    // Add more points as needed
  ],
      polylineId: 'polyline_02',
      initialCameraPosition: const LatLng(7.0809558615927495, 80.02046294561433)
  );
}

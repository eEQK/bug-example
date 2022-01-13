import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BugExample extends StatelessWidget {
  const BugExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(59.134110741376105, 6.246606820492957),
          zoom: 13.5,
        ),
        polygons: {
          Polygon(
            polygonId: const PolygonId("1"),
            points: points,
            strokeColor: const Color(0xFFFF0000),
            strokeWidth: 1,
            fillColor: Colors.black.withOpacity(0.4),
          )
        },
      ),
    );
  }
}

final points = [
  {"lat": 59.134110741376105, "lng": 6.246606820492957},
  {"lat": 59.13499140495762, "lng": 6.242830270199988},
  {"lat": 59.13596010873867, "lng": 6.243259423642371},
  {"lat": 59.13670863380015, "lng": 6.2431735929538945},
  {"lat": 59.13780937622464, "lng": 6.2431735929538945},
  {"lat": 59.13820563483493, "lng": 6.2424011167576055},
  {"lat": 59.13842577652575, "lng": 6.239826196103309},
  {"lat": 59.13855786086084, "lng": 6.238452905087684},
  {"lat": 59.13983464982995, "lng": 6.235877984433387},
  {"lat": 59.14080321659706, "lng": 6.2321872648288945},
  {"lat": 59.1424761310184, "lng": 6.228582375912879},
  {"lat": 59.14287233561826, "lng": 6.229698174863074},
  {"lat": 59.14185980363735, "lng": 6.2308139738132695},
  {"lat": 59.14150761158053, "lng": 6.231500619321082},
  {"lat": 59.14102334158627, "lng": 6.231586450009559},
  {"lat": 59.14036296237253, "lng": 6.233903878598426},
  {"lat": 59.13983464982995, "lng": 6.23579215374491},
  {"lat": 59.13860188885929, "lng": 6.238367074399207},
  {"lat": 59.13820563483493, "lng": 6.242057794003699},
  {"lat": 59.13789743408993, "lng": 6.243001931576941},
  {"lat": 59.13596010873867, "lng": 6.2431735929538945},
  {"lat": 59.13499140495762, "lng": 6.242830270199988}
].map((e) => LatLng(e['lat']!, e['lng']!)).toList();

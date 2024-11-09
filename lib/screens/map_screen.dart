import 'package:flutter/material.dart';
import '../main_drawer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../utils.dart';

class MapScreen extends StatefulWidget {
  static const routeName = './map';

  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<Marker> allMarker = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allMarker.add(Marker(
        markerId: const MarkerId('Ubicación'),
        draggable: false,
        onTap: () {
          print('Marker Tapped');
        },
        position: const LatLng(-6.229646, -77.871049)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t(context, 'Ubicación')),
      ),
      drawer: const MainDrawer(),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(-6.229646, -77.871049),
              zoom: 12,
            ),
            markers: Set.from(allMarker),
          ),
        ),
      ),
    );
  }
}

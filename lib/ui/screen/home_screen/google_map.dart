import 'package:festa/ui/screen/home_screen/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  Set<Marker> markers = {};

  // {lat: 12.9063433, lng: 77.5856825}

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Map'),
          ),
          body: GoogleMap(
            markers: markers,
            initialCameraPosition: CameraPosition(
              target: LatLng(state.currenLoactionCoordinates.lat,
                  state.currenLoactionCoordinates.lng),
              zoom: 15.0,
            ),
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
              setState(() {
                markers.add(
                  Marker(
                    markerId: const MarkerId('marker_1'),
                    position: LatLng(state.currenLoactionCoordinates.lat,
                        state.currenLoactionCoordinates.lng),
                  ),
                );
              });
            },
          ),
        );
      },
    );
  }
}

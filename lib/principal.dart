import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPS FLUTTER'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),

        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
            children: [
              TileLayer(
              //  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                 urlTemplate: 'https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png',

                userAgentPackageName: 'com.example.app',
              ),
            MarkerLayer(
              markers: [
                Marker(
                  width: 80.0,
                  height: 80.0,
                  // point: LatLng(37.7749, -122.4194),
                   point: LatLng(-23.54179545414396, -46.629475477303366),
                  // point: LatLng(-22.946895265998513, -43.20932629420582),
                  builder: (ctx) => Container(
                    child: Icon(Icons.location_on, color:Colors.red)
                  ),
                ),
              ],
            ),
            ],
          ),
        ],
      )
    );
  }
}

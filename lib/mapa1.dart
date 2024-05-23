import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa1 extends StatefulWidget {
  const Mapa1({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Mapa1>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA 1'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white70,
      ),
      body: Stack(children: [
        FlutterMap(
          options: MapOptions(center: LatLng(41.379737, 2.124107), zoom: 3),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.thunderforest.com/transport-dark/{z}/{x}/{y}.png?apikey=e4d9373e6d004421be9f0e85da000066',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
                markers: [
                  Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(41.379737, 2.124107), //Camp Nou Barcelona
                      builder: (ctx) => Container(
                        child: Icon(Icons.location_on, color: Colors.white),
                      )
                  ),
                ]
            )
          ],)
      ],),
    );
  }
}
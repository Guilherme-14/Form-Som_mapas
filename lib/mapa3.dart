import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa3 extends StatefulWidget {
  const Mapa3({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Mapa3>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA 3'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white70,
      ),
      body: Stack(children: [
        FlutterMap(
          options: MapOptions(center: LatLng(-23.950416, -46.338518), zoom: 3),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.thunderforest.com/mobile-atlas/{z}/{x}/{y}.png?apikey=e4d9373e6d004421be9f0e85da000066',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
                markers: [
                  Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(-23.950416, -46.338518), //Vila Belmiro, Santos
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
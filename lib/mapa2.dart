import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class Mapa2 extends StatefulWidget {
  const Mapa2({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Mapa2>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA 2'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white70,
      ),
      body: Stack(children: [
        FlutterMap(
          options: MapOptions(center: LatLng(40.454141, -3.687154), zoom: 3),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.thunderforest.com/landscape/{z}/{x}/{y}.png?apikey=e4d9373e6d004421be9f0e85da000066',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
                markers: [
                  Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(40.454141, -3.687154), //San Francisco, CA
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
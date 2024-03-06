// ignore_for_file: unnecessary_import, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class MAP_SCREEN extends StatefulWidget {
  const MAP_SCREEN({super.key});

  @override
  State<MAP_SCREEN> createState() => _MAP_SCREENState();
}
ColorNotifire notifire = ColorNotifire();
class _MAP_SCREENState extends State<MAP_SCREEN> {

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.bgcolore,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: mainrow()),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text('Basic Map',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          const SizedBox(height: 10,),
                          mapcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text('Marker Map',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          const SizedBox(height: 10,),
                          mapcontain1(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 130,),
                ],
              ),
            );
          } else if (constraints.maxWidth < 1000) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: mainrow()),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text('Basic Map',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          const SizedBox(height: 10,),
                          mapcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text('Marker Map',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          const SizedBox(height: 10,),
                          mapcontain1(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: mainrow()),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text('Basic Map',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          const SizedBox(height: 10,),
                          mapcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text('Marker Map',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          const SizedBox(height: 10,),
                          mapcontain1(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  late GoogleMapController mapController;
  LatLng showLocation = const LatLng(27.7089427, 85.3086209);

  Widget mapcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
      child: SizedBox(
        height: 400,
        width:double.infinity,
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
              target:showLocation,
              zoom: 13),
          mapType: MapType.normal,
          myLocationEnabled: false,
          zoomGesturesEnabled: true,
          tiltGesturesEnabled: true,
          zoomControlsEnabled: true,
          onMapCreated: (controller) {
            setState(() {
              mapController = controller;
            });
          },
        ),
      ),
    );
  }


  late GoogleMapController mapController1;
  LatLng showLocation1 = const LatLng(27.7089427, 85.3086209);
  List<LatLng> latlng=[
    const LatLng(27.7089427, 85.3086209),
    const LatLng(27.7089427, 85.3086209),
  ];

  Set<Marker> markers = {};

  @override
  void initState() {
    setMarkerInLatLong();
    // TODO: implement initState
    super.initState();
  }

  setMarkerInLatLong(){
    markers = {};
    for(int i=0; i<latlng.length; i++){
      markers.add(
          Marker(
              markerId: MarkerId(i.toString()),
              position: latlng[i],
              icon: BitmapDescriptor.defaultMarker,
          )
      );
      setState(() {
      });
    }
  }

  Widget mapcontain1(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
      child: SizedBox(
        height: 400,
        width:double.infinity,
        child: GoogleMap(
          markers: markers,
          initialCameraPosition: CameraPosition(
              target:showLocation1,
              zoom: 13),
          mapType: MapType.normal,
          myLocationEnabled: false,
          zoomGesturesEnabled: true,
          tiltGesturesEnabled: true,
          zoomControlsEnabled: true,
          onTap: (argument) {
            _onAddMarkerButtonPressed(argument.latitude, argument.longitude);
          },
          onMapCreated: (controller) {
            setState(() {
              mapController1 = controller;
            });
          },
        ),
      ),
    );
  }

  void _onAddMarkerButtonPressed(double? lat,long) {
    setState(() {
      markers.add(Marker(
        markerId: const MarkerId("1"),
        position: LatLng(double.parse(lat.toString()), double.parse(long.toString())),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }



  Widget mainrow() {
    return  Row(
      children: [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Map', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: SizedBox(
                  height: 60,
                  width: 150,
                  child:  Row(
                    children: [
                      const SizedBox(width: 70,),
                      Image(image: const AssetImage('assets/location-pin.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Map', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }



}





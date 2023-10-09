import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  List<String> cordinated = ["LatLng(37.42796133580664, -122.085749655962)"];
  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static const CameraPosition l1 = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(28.472134520879184, 77.18492311020589),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  // ignore: constant_identifier_names
  static const CameraPosition ocean_pearl = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(28.480407289140427, 77.18401006289132),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  static const CameraPosition tamanna = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(28.630315812997203, 77.22165976809275),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  static const CameraPosition barbaque_nation = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(28.63067477527386, 77.22046432460014),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  static const CameraPosition gt_road = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(28.633574040965023, 77.22272937542824),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  // ignore: constant_identifier_names
  static const CameraPosition shangh_palace = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(28.621408733107597, 77.21808427630732),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  static const CameraPosition kaka_hotel = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(28.63611496794167, 77.22184351083939),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static const LatLng _center = LatLng(16.494578, 80.499117);
  LatLng _lastMapPosition = _center;
  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: const InfoWindow(
          title: 'Really cool place',
          snippet: '5 Star Rating',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.add,
          color: Colors.transparent,
        ),
        actions: [
          InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 600,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Co-ordinates',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      for (int i = 0;
                                          i < cordinated.length;
                                          i++)
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 4, bottom: 4),
                                          child: Text(
                                            cordinated[i],
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 255),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Icon(
                Icons.notes,
                color: Colors.black,
              )),
          const SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {
                _onMapTypeButtonPressed();
              },
              child: const Icon(
                Icons.room_rounded,
                color: Colors.black,
              )),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 600,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  f1();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30), //<-- SEE HERE
                                    ),
                                    tileColor: Colors.orange,
                                    leading: const Icon(Icons.restaurant),
                                    title: const Text(
                                      "Bella Monde",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    subtitle: const Text(
                                      "Restaurant",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  f2();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30), //<-- SEE HERE
                                    ),
                                    tileColor: Colors.orange,
                                    leading: const Icon(Icons.restaurant),
                                    title: const Text(
                                      "ocean pearl",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    subtitle: const Text(
                                      "Restaurant",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  f3();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30), //<-- SEE HERE
                                    ),
                                    tileColor: Colors.orange,
                                    leading: const Icon(Icons.restaurant),
                                    title: const Text(
                                      "Tamanna",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    subtitle: const Text(
                                      "Restaurant",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  f4();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30), //<-- SEE HERE
                                    ),
                                    tileColor: Colors.orange,
                                    leading: const Icon(Icons.restaurant),
                                    title: const Text(
                                      "Barbaue Nation",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    subtitle: const Text(
                                      "Restaurant",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  f5();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30), //<-- SEE HERE
                                    ),
                                    tileColor: Colors.orange,
                                    leading: const Icon(Icons.restaurant),
                                    title: const Text(
                                      "Gt Palace",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    subtitle: const Text(
                                      "Restaurant",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  f6();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30), //<-- SEE HERE
                                    ),
                                    tileColor: Colors.orange,
                                    leading: const Icon(Icons.restaurant),
                                    title: const Text(
                                      "Shangha Singh",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    subtitle: const Text(
                                      "Restaurant",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                  f7();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30), //<-- SEE HERE
                                    ),
                                    tileColor: Colors.orange,
                                    leading: const Icon(Icons.restaurant),
                                    title: const Text(
                                      "Kaka Hotel",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    subtitle: const Text(
                                      "Restaurant",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: const Icon(
              Icons.search,
              size: 28,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
        title: const Text(
          'search restaurants',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 23,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.orange,
      ),
      body: GoogleMap(
        mapType: _currentMapType,
        myLocationEnabled: true,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: _onMapCreated,
        markers: _markers,
        onCameraMove: _onCameraMove,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _onAddMarkerButtonPressed();
          cordinated.insert(0, _lastMapPosition.toString());
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add_location, size: 36.0),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    _onAddMarkerButtonPressed();
  }

  Future<void> f1() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(l1));
  }

  Future<void> f2() async {
    final GoogleMapController controller = await _controller.future;
    await controller
        .animateCamera(CameraUpdate.newCameraPosition(barbaque_nation));
  }

  Future<void> f3() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(ocean_pearl));
  }

  Future<void> f4() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(tamanna));
  }

  Future<void> f5() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(gt_road));
  }

  Future<void> f6() async {
    final GoogleMapController controller = await _controller.future;
    await controller
        .animateCamera(CameraUpdate.newCameraPosition(shangh_palace));
  }

  Future<void> f7() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(kaka_hotel));
  }

  final Set<Marker> _markers = Set();
  Future<void> _goToNewYork() async {
    double lat = 40.7128;
    double long = -74.0060;
    GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, long), 15));
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('newyork'),
          position: LatLng(lat, long),
        ),
      );
    });
  }

  MapType _currentMapType = MapType.normal;
  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }
}

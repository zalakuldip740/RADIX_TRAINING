import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_map_clustering_example/place.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapClustering extends StatefulWidget {
  const GoogleMapClustering({Key? key}) : super(key: key);

  @override
  _GoogleMapClusteringState createState() => _GoogleMapClusteringState();
}

class _GoogleMapClusteringState extends State<GoogleMapClustering> {
  late ClusterManager _manager;
  late GoogleMapController googleMapController;

  final Completer<GoogleMapController> _controller = Completer();

  Set<Marker> markers = {};
  Set<Circle> circles = {};

  final CameraPosition _parisCameraPosition =
      const CameraPosition(target: LatLng(48.856613, 2.352222), zoom: 13.0);

  List<Place> items = [
    for (int i = 0; i < 10; i++)
      Place(
          name: 'Place $i',
          latLng: LatLng(48.848200 + i * 0.001, 2.319124 + i * 0.001)),
    for (int i = 0; i < 10; i++)
      Place(
          name: 'Restaurant $i',
          isClosed: i % 2 == 0,
          latLng: LatLng(48.856613 - i * 0.001, 2.352222 + i * 0.001)),
    for (int i = 0; i < 10; i++)
      Place(
          name: 'Bar $i',
          latLng: LatLng(48.856613 + i * 0.01, 2.352222 - i * 0.01)),
    for (int i = 0; i < 10; i++)
      Place(
          name: 'Hotel $i',
          latLng: LatLng(48.856613 - i * 0.1, 72.352222 - i * 0.01)),
  ];

  @override
  void initState() {
    _manager = _initClusterManager();
    super.initState();
  }

  ClusterManager _initClusterManager() {
    return ClusterManager<Place>(
      items,
      _updateMarkers,
      markerBuilder: _markerBuilder,
      //levels: const [1, 4.25, 6.75, 8.25, 11.5, 14.5, 16.0],
    );
  }

  Future<void> _updateMarkers(Set<Marker> markers) async {
    Set<Circle> circles2 = {};
    //add circle
    for (var i = 0; i < markers.length; i++) {
      circles2.add(
        Circle(
            circleId: CircleId('circle $i'),
            consumeTapEvents: true,
            strokeColor: Colors.blue,
            fillColor: Colors.blue.withOpacity(0.2),
            strokeWidth: 2,
            center: markers.elementAt(i).position,
            onTap: () {},
            radius: 100 // / await googleMapController.getZoomLevel(),
            ),
      );
    }
    setState(() {
      this.markers = markers;
      circles = circles2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          //minMaxZoomPreference: const MinMaxZoomPreference(0, 16),
          mapType: MapType.normal,
          circles: circles,
          initialCameraPosition: _parisCameraPosition,
          markers: markers,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            _manager.setMapId(controller.mapId);
            setState(() {
              googleMapController = controller;
            });
          },
          onCameraMove: _manager.onCameraMove,
          onCameraIdle: _manager.updateMap),
    );
  }

  Future<Marker> Function(Cluster<Place>) get _markerBuilder =>
      (cluster) async {
        //if (cluster.isMultiple) {
        //   circles.add(
        //     Circle(
        //       circleId: CircleId(cluster.getId()),
        //       consumeTapEvents: true,
        //       strokeColor: Colors.red,
        //       fillColor: Colors.blue.withOpacity(0.2),
        //       strokeWidth: 2,
        //       center: cluster.location,
        //       onTap: () {},
        //       radius: 100,
        //     ),
        //   );
        // }
        return Marker(
          markerId: MarkerId(cluster.getId()),
          position: cluster.location,
          infoWindow:
              InfoWindow(title: cluster.items.first.name, snippet: "Go"),
          onTap: () {
            print('---- $cluster');
            for (var p in cluster.items) {
              print(p);
            }
          },
          icon: await _getMarkerBitmap(cluster.isMultiple ? 125 : 125,
              text: cluster.isMultiple ? "+" + cluster.count.toString() : '+1'),
        );
        //} else {
        //   return Marker(markerId: MarkerId(""));
        //}
      };

  Future<BitmapDescriptor> _getMarkerBitmap(int size, {String? text}) async {
    final PictureRecorder pictureRecorder = PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint1 = Paint()..color = Colors.white;
    final Paint paint2 = Paint()..color = Colors.blue;

    //canvas.drawCircle(Offset(size / 2, size / 2), size / 2.8, paint1);
    // canvas.drawCircle(Offset(size / 2, size / 2), size / 2.2, paint2);
    canvas.drawCircle(Offset(size / 2, size / 2), size / 3.5, paint2);

    if (text != null) {
      TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
      painter.text = TextSpan(
        text: text,
        style: TextStyle(
            fontSize: size / 8,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      );
      painter.layout();
      painter.paint(
        canvas,
        Offset(size / 2 - painter.width / 2, size / 2 - painter.height / 2),
      );
    }

    final img = await pictureRecorder.endRecording().toImage(size, size);
    final data = await img.toByteData(format: ImageByteFormat.png) as ByteData;

    return BitmapDescriptor.fromBytes(data.buffer.asUint8List());
  }
}

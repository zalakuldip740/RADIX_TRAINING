import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_map_clustering/place.dart';
import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapClustering extends StatefulWidget {
  const GoogleMapClustering({Key? key}) : super(key: key);

  @override
  _GoogleMapClusteringState createState() => _GoogleMapClusteringState();
}

class _GoogleMapClusteringState extends State<GoogleMapClustering> {
  late ClusterManager _manager;

  final Completer<GoogleMapController> _controller = Completer();

  Set<Marker> markers = {};

  final CameraPosition _parisCameraPosition =
  const CameraPosition(target: LatLng(23.846613, 72.352222), zoom: 12.0);

  List<Place> items = [
    for (int i = 0; i < 10; i++)
      Place(
          name: 'Place $i',
          latLng: LatLng(23.848200 + i * 0.001, 72.319124 + i * 0.001)),
    for (int i = 0; i < 10; i++)
      Place(
          name: 'Restaurant $i',
          isClosed: i % 2 == 0,
          latLng: LatLng(23.858265 - i * 0.001, 72.350107 + i * 0.001)),
    for (int i = 0; i < 10; i++)
      Place(
          name: 'Bar $i',
          latLng: LatLng(23.858265 + i * 0.01, 72.350107 - i * 0.01)),
    for (int i = 0; i < 10; i++)
      Place(
          name: 'Hotel $i',
          latLng: LatLng(24.858265 - i * 0.1, 72.350107 - i * 0.01)),
  ];

  @override
  void initState() {
    _manager = _initClusterManager();
    super.initState();
  }

  ClusterManager _initClusterManager() {
    return ClusterManager<Place>(items, _updateMarkers,
        markerBuilder: _markerBuilder);
  }

  void _updateMarkers(Set<Marker> markers) {
    print('Updated ${markers.length} markers');
    setState(() {
      this.markers = markers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _parisCameraPosition,
          markers: markers,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            _manager.setMapId(controller.mapId);
          },
          onCameraMove: _manager.onCameraMove,
          onCameraIdle: _manager.updateMap),

    );
  }

  Future<Marker> Function(Cluster<Place>) get _markerBuilder =>
          (cluster) async {
        return Marker(
          markerId: MarkerId(cluster.getId()),
          position: cluster.location,
          infoWindow: InfoWindow(title: cluster.items.first.name,snippet: "Go"),
          onTap: () {
            print('---- $cluster');
            for (var p in cluster.items) {
              print(p);
            }
          },
          icon: await _getMarkerBitmap(cluster.isMultiple ? 125 : 75,
              text: cluster.isMultiple ? cluster.count.toString() : null),
        );
      };

  Future<BitmapDescriptor> _getMarkerBitmap(int size, {String? text}) async {

    final PictureRecorder pictureRecorder = PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint1 = Paint()..color = Colors.blue;
    final Paint paint2 = Paint()..color = Colors.white;

    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.0, paint1);
    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.2, paint2);
    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.8, paint1);

    if (text != null) {
      TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
      painter.text = TextSpan(
        text: text,
        style: TextStyle(
            fontSize: size / 3,
            color: Colors.white,
            fontWeight: FontWeight.normal),
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

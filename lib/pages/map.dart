import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> with OSMMixinObserver {
  final _controller = MapController.withUserPosition(
    trackUserLocation: const UserTrackingOption(
      enableTracking: true,
      unFollowUser: false,
    ),
  );
 
  @override
  Future<void> mapIsReady(bool isReady) async {
    if (isReady) {
      // Map is ready
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addObserver(this);
  }

  @override
  void onSingleTap(GeoPoint position) {
    super.onSingleTap(position);

    double latitude = position.latitude;
    double longitude = position.longitude;
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Location'),
        content: Text('Latitude: $latitude\nLongitude: $longitude'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Choose Hazard Zone'),
          centerTitle: true,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)), side: BorderSide(color: Colors.blue, width: 3))

        ),
        backgroundColor: Colors.black,
        body: OSMFlutter( 
            mapIsLoading: const Center(child: Text("Map is Loading", style: TextStyle(fontSize: 32, color: Colors.white),)),
            controller: _controller,
            osmOption: OSMOption(
                  userTrackingOption: const UserTrackingOption(
                  enableTracking: true,
                  unFollowUser: false,
                ),
                zoomOption: const ZoomOption(
                      initZoom: 40,
                      minZoomLevel: 3,
                      maxZoomLevel: 19,
                      stepZoom: 1.0,
                ),
                userLocationMarker: UserLocationMaker(
                    personMarker: const MarkerIcon(
                        icon: Icon(
                            Icons.location_on_outlined,
                            color: Colors.red,
                            size: 78,
                        ),
                    ),
                    directionArrowMarker: const MarkerIcon(
                        icon: Icon(
                            Icons.double_arrow,
                            size: 48,
                        ),
                    ),
                ),
                roadConfiguration: const RoadOption(
                        roadColor: Colors.yellowAccent,
                ),
            )
        ),
      ),
    );
  }
}
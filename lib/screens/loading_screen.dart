import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final LocationSettings locationSettings = LocationSettings(
              accuracy: LocationAccuracy.high,
              distanceFilter: 100,
            );

            void getLocation() async {
              Position position = await Geolocator.getCurrentPosition(
                  locationSettings: locationSettings);
              print(position);
            }
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}

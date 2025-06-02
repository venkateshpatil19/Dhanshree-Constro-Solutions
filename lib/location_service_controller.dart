import 'package:geolocator/geolocator.dart';

class LocationServiceController {
  bool _isTracking = false;

  void startTracking() {
    _isTracking = true;
    _trackLocation();
    print("Tracking started.");
  }

  void stopTracking() {
    _isTracking = false;
    print("Tracking stopped.");
  }

  void _trackLocation() async {
    while (_isTracking) {
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );
        print('Location: ${position.latitude}, ${position.longitude}');
      } catch (e) {
        print('Location error: $e');
      }
      await Future.delayed(const Duration(seconds: 10)); // Poll every 10 seconds
    }
  }
}

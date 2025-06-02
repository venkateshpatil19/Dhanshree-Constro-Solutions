import 'package:flutter/material.dart';
import 'package:location_module/location_service_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTracking = false;
  final LocationServiceController _locationService = LocationServiceController();

  void _toggleTracking() {
    setState(() {
      isTracking = !isTracking;
    });

    if (isTracking) {
      _locationService.startTracking();
    } else {
      _locationService.stopTracking();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 4,
              child: ListTile(
                title: const Text("Total Distance"),
                subtitle: const Text("0.0 km"), // Placeholder for now
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _toggleTracking,
              icon: Icon(isTracking ? Icons.stop : Icons.play_arrow),
              label: Text(isTracking ? "Stop Tracking" : "Start Tracking"),
              style: ElevatedButton.styleFrom(
                backgroundColor: isTracking ? Colors.red : Colors.green,
                minimumSize: const Size.fromHeight(50),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Link to DPR
              },
              child: const Text("Submit DPR"),
              style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
            ),
          ],
        ),
      ),
    );
  }
}

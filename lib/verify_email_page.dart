// TODO Implement this library.
import 'package:flutter/material.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Verify Email")),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(Icons.email_outlined, size: 100, color: Colors.deepPurple),
            SizedBox(height: 20),
            Text(
              "A verification link has been sent to your email.",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "Please verify your email before logging in.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Location App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AuthPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

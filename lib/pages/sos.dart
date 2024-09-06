import 'package:flutter/material.dart';

class SosScreen extends StatefulWidget {
  const SosScreen({super.key});

  @override
  State<SosScreen> createState() => _SosScreenState();
}

class _SosScreenState extends State<SosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(eccentricity: 0),
            fixedSize: const Size.fromRadius(120),
            foregroundColor: Colors.red,
            backgroundColor: Colors.red,
            elevation: 20,
          ),
          onPressed: () {},
          child: const Text("SOS",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 75
            ),
          ),
        )
      ),
    );
  }
}
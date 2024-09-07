import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:permission_handler/permission_handler.dart';

class SosScreen extends StatefulWidget {
  const SosScreen({super.key});

  @override
  State<SosScreen> createState() => _SosScreenState();
}

class _SosScreenState extends State<SosScreen> {
Future<void> _makePhoneCall(String phoneNumber) async {
  final status = await Permission.phone.status;
  if (status.isDenied) {
    await Permission.phone.request();
  }

  if (await Permission.phone.isGranted) {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber.toString(),
    );
    try {
//       if (await canLaunchUrl(launchUri)) {
        await launchUrl(launchUri);
//       } else {
//         if (mounted) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//       content: Text('Could not place call to $phoneNumber'),
//     ),
//   );
// }
//       }
    } catch (e) {
      if (mounted) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Could not place call to $phoneNumber'),
    ),
  );
}
    }
  } else {
    if (mounted) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Permission denied'),
    ),
  );
}
  }
}


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
          onPressed: () {
            _makePhoneCall("112");
          },
          child: const Text(
            "SOS",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 75,
            ),
          ),
        ),
      ),
    );
  }
}

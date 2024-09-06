import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Profile Page", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Center(child: Image(image: AssetImage('assets/legendBadge.png'))),
            SizedBox(height: 30,),            
            Text("Name: ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 32),),
            SizedBox(height: 30,),              
            Text("Contributions: N/A", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 32),),
            SizedBox(height: 30,),              
            Text("Phone: 9876xxxxxx", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 32),)            
          ],
        ),
      ),
    );
  }
}
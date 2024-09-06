import 'package:flutter/material.dart';
import 'package:yuva_hack/pages/feed.dart';
import 'package:yuva_hack/pages/map.dart';
import 'package:yuva_hack/pages/sos.dart';

class Constructor extends StatefulWidget {
  const Constructor({super.key});

  @override
  State<Constructor> createState() => _ConstructorState();
}

class _ConstructorState extends State<Constructor> {
  int _index = 0;
  final List<Widget> _screens = [
    const FeedScreen(),
    const MapScreen(),
    const SosScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _index,
        onTap: (index){
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.featured_play_list_outlined, color: Colors.grey[200],),
            activeIcon: const Icon(Icons.featured_play_list_outlined, color: Colors.orange,),
            label: 'Feed'
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined, color: Colors.grey[200],),
            activeIcon: const Icon(Icons.map_outlined, color: Colors.orange,),
            label: 'Report'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sos_outlined, color: Colors.grey[200],),
            activeIcon: const Icon(Icons.sos_outlined, color: Colors.orange,),
            label: 'SOS',
          )
        ],
      ),
      body: _screens[_index],
    );
  }
}
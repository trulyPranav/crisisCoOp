import 'package:flutter/material.dart';

class Feedcontainer extends StatefulWidget {
  const Feedcontainer({super.key});

  @override
  State<Feedcontainer> createState() => _FeedcontainerState();
}

class _FeedcontainerState extends State<Feedcontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.white)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Purushothhaman Nair", style: TextStyle(color: Colors.white, fontSize: 22),),
                const SizedBox(height: 5,),
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text("URGENT!", style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height:10,),
                const Text("Help eyy veegem, no rice no water only pain", style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.white)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.white)
                  ),
                  child: const Icon(Icons.thumb_up_alt_outlined, color: Colors.white,)),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.white)
                  ),                  
                  child: const Icon(Icons.wifi_protected_setup_sharp, color: Colors.white,)),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Colors.white)
                  ),                  
                  child: const Icon(Icons.report_gmailerrorred_outlined, color: Colors.white,))
              ],
            ),
          )
        ],
      ),
    );
  }
}
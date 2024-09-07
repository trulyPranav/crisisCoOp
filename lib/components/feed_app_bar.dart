import 'package:flutter/material.dart';
import 'package:yuva_hack/pages/profile.dart';

class ProfileComponent extends StatelessWidget implements PreferredSizeWidget {
  const ProfileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('CrisisCo-op',
            style: TextStyle(
              fontSize: 30,
              color: Colors.orange
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
            child: const Icon(Icons.account_circle_outlined,
              color: Colors.orange,
              size: 43,
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0); // Adjust height as needed
}

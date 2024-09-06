import 'package:flutter/material.dart';

class ProfileComponent extends StatelessWidget implements PreferredSizeWidget {
  const ProfileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('crisisCoop',
            style: TextStyle(
              fontSize: 30,
              color: Colors.orange
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(Icons.account_circle_outlined,
              color: Colors.orange,
              size: 45,
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.0); // Adjust height as needed
}

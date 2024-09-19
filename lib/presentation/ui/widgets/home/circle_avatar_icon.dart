
import 'package:flutter/material.dart';

class CircleAvatarIcon extends StatelessWidget {
  const CircleAvatarIcon({super.key, required this.onTap, required this.icon});

  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.black12,
        radius: 15,
        child: InkWell(
          onTap: onTap,
          child: Icon(
            icon,
            size: 15,
          ),
        ));
  }
}
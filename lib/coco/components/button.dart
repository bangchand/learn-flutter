import 'package:flutter/material.dart';

class CocoButton extends StatelessWidget {
  final IconData icon;

  const CocoButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
          color: Colors.white,
        ),
        child: Icon(icon, size: 26),
      ),
    );
  }
}

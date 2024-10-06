import 'package:flutter/material.dart';

class mydivider extends StatelessWidget {
  final Color color; // Parameter untuk warna
  final double thickness; // Parameter untuk ketebalan

  const mydivider({
    Key? key,
    this.color = Colors.grey, // Default warna
    this.thickness = 0.5, // Default ketebalan
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        thickness: thickness,
        color: color,
      ),
    );
  }
}

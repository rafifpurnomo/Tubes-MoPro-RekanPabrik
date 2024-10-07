import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final Color BGcolor, borderColor, textColor;
  final double tebalBorder, borderRadius;
  final int fontSize;
  final String text;
  final VoidCallback onPressed;

  const ButtonComponent({
    Key? key,
    required this.text,
    required this.textColor,
    required this.BGcolor,
    required this.borderColor,
    required this.borderRadius,
    required this.tebalBorder,
    required this.fontSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed;
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: BGcolor, // Latar belakang transparan
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(
            color: borderColor, // Warna border coklat
            width: tebalBorder, // Ketebalan border
          ),
        ),
        elevation: 0, // Hilangkan bayangan agar benar-benar transparan
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: textColor, // Warna teks tetap
        ),
      ),
    );
  }
}

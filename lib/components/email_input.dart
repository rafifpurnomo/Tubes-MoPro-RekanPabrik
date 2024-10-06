import 'package:flutter/material.dart';
import 'package:rekanpabrik/shared/shared.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.email,
          size: 20,
        ),
        labelText: 'Email',
        labelStyle: TextStyle(
          color: greyColor, // Warna label
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), // Mengatur border radius
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              15), // Mengatur border radius ketika tidak fokus
          borderSide: BorderSide(
            color: thirdColor, // Warna border ketika tidak fokus
            width: 2.0, // Ketebalan border
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(15), // Mengatur border radius ketika fokus
          borderSide: BorderSide(
            color: thirdColor, // Warna border ketika fokus
            width: 2.0, // Ketebalan border
          ),
        ),
      ),
    );
  }
}

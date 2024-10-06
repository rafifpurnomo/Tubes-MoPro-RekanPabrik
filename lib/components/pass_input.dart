import 'package:flutter/material.dart';
import 'package:rekanpabrik/shared/shared.dart';

class PassInput extends StatelessWidget {
  const PassInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.lock,
          size: 20,
        ),
        labelText: 'Password',
        labelStyle: TextStyle(
          color: greyColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: thirdColor,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: thirdColor,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}

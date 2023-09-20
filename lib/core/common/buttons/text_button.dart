import 'package:flutter/material.dart';

class TextCommonButton extends StatelessWidget {
  final String? buttonTxt;
  final VoidCallback onPressed;
  const TextCommonButton(
      {super.key, required this.buttonTxt, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextButton(
          onPressed: onPressed,
          child: Text(buttonTxt ?? ""),
        ),
      ),
    );
  }
}

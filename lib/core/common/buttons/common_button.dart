import 'package:flutter/material.dart';

class FlightCommonButton extends StatelessWidget {
  final String? buttonTxt;
  final VoidCallback onPressed;
  const FlightCommonButton(
      {super.key, required this.buttonTxt, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
              ),
            ),
          ),
          child: Text(buttonTxt ?? ""),
        ),
      ),
    );
  }
}

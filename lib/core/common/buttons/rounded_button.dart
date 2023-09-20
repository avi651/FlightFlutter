import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String? imageName;
  final VoidCallback onPressed;
  const RoundedButton(
      {super.key, required this.imageName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            //backgroundColor: Colors.white,
            fixedSize: const Size(60, 60)),
        child: const Icon(Icons.add_circle_outline),
      ),
    );
  }
}

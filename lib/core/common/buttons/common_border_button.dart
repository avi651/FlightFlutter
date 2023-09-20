import 'package:flight_app/core/resources/colors.dart';
import 'package:flutter/cupertino.dart';

class CommonBorderButton extends StatelessWidget {
  final String? buttonTxt;
  final VoidCallback onPressed;
  const CommonBorderButton(
      {super.key, required this.buttonTxt, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        // wrap the text/widget using container
        padding: const EdgeInsets.all(12), // add padding
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorPalette.darkForeground,
            width: 1,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12.0),
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
          ), // radius as you wish
        ),
        child: Center(
          child: Text(
            buttonTxt ?? "",
            style: const TextStyle(color: ColorPalette.darkForeground),
          ),
        ),
      ),
    );
  }
}

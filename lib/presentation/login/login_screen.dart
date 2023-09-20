import 'package:flight_app/core/common/buttons/common_border_button.dart';
import 'package:flight_app/core/common/buttons/common_button.dart';
import 'package:flight_app/core/common/buttons/rounded_button.dart';
import 'package:flight_app/core/common/buttons/text_button.dart';
import 'package:flight_app/core/common/textfields/bordered_textfield.dart';
import 'package:flight_app/core/widgets/divider_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? mobileNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20, //92.0,
                ),
                Image.asset(
                  'assets/images/akasa-logo.png',
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const BorderedTextField(),
                const SizedBox(
                  height: 16.0,
                ),
                FlightCommonButton(
                  buttonTxt: "Sign in with otp",
                  onPressed: () {
                    print("Button Clicked");
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: dividerWidget(),
                    ),
                    const Text("   OR  "),
                    Expanded(
                      child: dividerWidget(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32.0,
                ),
                TextCommonButton(
                    buttonTxt: "Sign in with password", onPressed: () {}),
                CommonBorderButton(
                    buttonTxt: "Sign up for faster checkout", onPressed: () {}),
                const SizedBox(
                  height: 64.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: dividerWidget(),
                    ),
                    const Text("   OR  "),
                    Expanded(
                      child: dividerWidget(),
                    ),
                  ],
                ),
                RoundedButton(
                    imageName: "assets/images/facebook.png", onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

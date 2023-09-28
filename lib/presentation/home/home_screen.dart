import 'package:flight_app/core/common/carousel/flight_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 63,
          ),
          Container(
            color: Colors.red,
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: const FlightCarousel(),
          ),
        ],
      ),
    );
  }
}

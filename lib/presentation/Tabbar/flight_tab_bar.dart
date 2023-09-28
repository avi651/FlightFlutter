import 'package:flight_app/presentation/bookflight/book_flight.dart';
import 'package:flight_app/presentation/home/home_screen.dart';
import 'package:flight_app/presentation/more/more_screen.dart';
import 'package:flight_app/presentation/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class FlightTabBar extends StatefulWidget {
  const FlightTabBar({super.key});

  @override
  State<FlightTabBar> createState() => _FlightTabBarState();
}

class _FlightTabBarState extends State<FlightTabBar> {
  int tabIndex = 0;
  List<Widget>? listScreen;

  @override
  void initState() {
    super.initState();
    listScreen = [
      const HomeScreen(),
      const BookFlight(),
      const ProfileScreen(),
      const MoreScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: Scaffold(
        body: listScreen?[tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.orange,
          currentIndex: tabIndex,
          onTap: (int index) {
            setState(() {
              tabIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flight_rounded),
              label: 'Book Flight',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outline_sharp),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              label: 'More',
            ),
          ],
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }
}

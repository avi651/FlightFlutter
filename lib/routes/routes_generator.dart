import 'package:flight_app/presentation/Tabbar/flight_tab_bar.dart';
import 'package:flight_app/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/SplashScreen':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/TabBarScreen':
        return MaterialPageRoute(builder: (_) => const FlightTabBar());
      // Validation of correct data type
      //   if (args is List<String>) {
      //     return MaterialPageRoute(
      //       builder: (_) => SecondScreen(
      //         listPlayerNames: args,
      //       ),
      //     );
      //   }
      // If args is not of the correct type, return an error page.
      // You can also throw an exception while in development
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

import 'package:flight_app/bloc/theme/theme_bloc.dart';
import 'package:flight_app/get_it/getit_services.dart';
import 'package:flight_app/presentation/splash/splash_screen.dart';
import 'package:flight_app/routes/routes_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  GetItServices().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return const MaterialApp(
            //theme: state.themeData,
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
            onGenerateRoute: RouteGenerator.generateRoute,
          );
        },
      ),
    );
  }
}

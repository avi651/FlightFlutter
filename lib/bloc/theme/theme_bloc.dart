import 'package:equatable/equatable.dart';
import 'package:flight_app/core/theme/cream_theme.dart';
import 'package:flight_app/core/theme/dark_theme.dart';
import 'package:flight_app/core/theme/space_theme.dart';
import 'package:flight_app/core/util/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(themeData: spaceTheme)) {
    on<ThemeEvent>((event, emit){
      switch (event.theme) {
        case AppTheme.darkTheme:
          emit(ThemeState(themeData: creamTheme));
          break;
        case AppTheme.lightTheme:
          emit(ThemeState(themeData: creamTheme));
          break;
        case AppTheme.spaceTheme:
          emit(ThemeState(themeData: creamTheme));
          break;
        default:
          emit(ThemeState(themeData: creamTheme));
          break;
      }
    });
  }
}
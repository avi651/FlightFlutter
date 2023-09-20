import 'package:flight_app/bloc/phone_validation_bloc/phone_validation_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class GetItServices {
  void init() {
    getIt.registerFactory<PhoneValidationBloc>(() => PhoneValidationBloc());
  }
}

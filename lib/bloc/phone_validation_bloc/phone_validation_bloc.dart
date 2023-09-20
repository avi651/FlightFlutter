import 'package:flight_app/bloc/phone_validation_bloc/phone_validation_event.dart';
import 'package:flight_app/bloc/phone_validation_bloc/phone_validation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneValidationBloc extends Bloc<PhoneValidationEvent, PhoneNumberState> {
  PhoneValidationBloc() : super(PhoneNumberInitalState()) {
    on<PhoneNumbeerSubmittedEvent>((event, emit) {
      if (event.phoneNumber == "") {
        emit(PhoneNumberErrorState("Please enter Phone Number"));
      } else if (event.phoneNumber.length < 10) {
        emit(PhoneNumberErrorState("Phone Number is less than 10 character"));
      } else if (event.phoneNumber.length > 10) {
        emit(PhoneNumberErrorState("Phone Number is more than 10 character"));
      } else {
        emit(PhoneNumberValidState());
      }
    });

    on<PhoneNumbeerSubmittedEvent>((event, emit) {
      emit(PhoneNumberLoadingState());
    });
  }
}

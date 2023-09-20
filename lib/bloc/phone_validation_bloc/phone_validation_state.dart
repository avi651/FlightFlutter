abstract class PhoneNumberState {}

class PhoneNumberInitalState extends PhoneNumberState {}

class PhoneNumberValidState extends PhoneNumberState {}

class PhoneNumberErrorState extends PhoneNumberState {
  final String errorMessage;
  PhoneNumberErrorState(this.errorMessage);
}

class PhoneNumberLoadingState extends PhoneNumberState {}

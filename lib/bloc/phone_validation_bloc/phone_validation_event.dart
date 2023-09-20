abstract class PhoneValidationEvent {}

class PhoneNumberTextChangedEvent extends PhoneValidationEvent {
  final String phoneNumber;
  PhoneNumberTextChangedEvent(this.phoneNumber);
}

class PhoneNumbeerSubmittedEvent extends PhoneValidationEvent {
  final String phoneNumber;
  PhoneNumbeerSubmittedEvent(this.phoneNumber);
}

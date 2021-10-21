import 'package:equatable/equatable.dart';

class EmailAddress extends Equatable {
  final String value;

  factory EmailAddress(String input) {
    return EmailAddress._(input);
  }

  const EmailAddress._(this.value);

  @override
  List<Object> get props => [value];

  @override
  bool get stringify => true;
}

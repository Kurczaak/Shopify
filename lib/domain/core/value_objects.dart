import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:kt_dart/kt.dart';
import 'package:shopify_manager/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';
import 'package:shopify_manager/domain/core/errors.dart';

import 'package:shopify_manager/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  Either<ValueFailure<T>, T> get value;

  /// Trhows [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - sam as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (_) => right(unit));
  }

  const ValueObject();

  @override
  List<Object> get props => [value];

  @override
  bool get stringify => true;
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }
  const UniqueId._(this.value);
}

class PositiveNumber extends ValueObject<double> {
  static const double maxPositiveNumber = 999999;
  static const double minPositiveNumber = 0.01;

  @override
  final Either<ValueFailure<double>, double> value;
  factory PositiveNumber(double input) {
    return PositiveNumber._(
      validateDoubleRange(input, minPositiveNumber, maxPositiveNumber),
    );
  }
  const PositiveNumber._(this.value);
}

class ShopifyUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ShopifyUrl(String url) =>
      ShopifyUrl._(validateStringContains(url, ['shopify', 'https'])
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine));

  const ShopifyUrl._(this.value);
}

abstract class Name extends ValueObject<String> {
  static const maxLength = 10;
  @override
  Either<ValueFailure<String>, String> get value;
  const Name();
}

class AddressNumber extends ValueObject<String> {
  static const maxNumber = 999;
  static const maxLength = 5;

  @override
  final Either<ValueFailure<String>, String> value;
  factory AddressNumber(String input) {
    return AddressNumber._(
        validateMaxStringLength(input, maxLength).flatMap(validateSingleLine));
  }
  const AddressNumber._(this.value);
}

class StreetNumber extends AddressNumber {
  factory StreetNumber(String input) {
    return StreetNumber._(validateStringNotEmpty(input)
        .flatMap(validateContainsNumber)
        .flatMap((passedValue) => validateMaxStringLength(passedValue, 3)));
  }
  const StreetNumber._(Either<ValueFailure<String>, String> value)
      : super._(value);
}

class StreetName extends Name {
  static const maxLength = 50;
  static const minLength = 3;
  @override
  final Either<ValueFailure<String>, String> value;
  factory StreetName(String input) {
    return StreetName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(
              (passedValue) => validateMinStringLength(passedValue, minLength))
          .flatMap(validateSingleLine),
    );
  }
  const StreetName._(this.value);
}

class CityName extends Name {
  static const maxLength = 80;
  static const minLength = 3;
  @override
  final Either<ValueFailure<String>, String> value;
  factory CityName(String input) {
    return CityName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(
              (passedValue) => validateMinStringLength(passedValue, minLength))
          .flatMap(validateSingleLine),
    );
  }
  const CityName._(this.value);
}

class PostalCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory PostalCode(String input) {
    return PostalCode._(validatePostalCode(input));
  }
  const PostalCode._(this.value);
}

class NonEmptyList5<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 5;

  factory NonEmptyList5.empty() => NonEmptyList5(KtList<T>.empty());

  factory NonEmptyList5(KtList<T> input) {
    return NonEmptyList5._(validateListLength(input, maxLength, minLength: 1));
  }

  const NonEmptyList5._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import 'package:shopify_client/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  Either<ValueFailure<T>, T> get value;

  const ValueObject();

  @override
  List<Object> get props => [value];

  @override
  bool get stringify => true;
}

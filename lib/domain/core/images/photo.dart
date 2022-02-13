import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopify_manager/domain/core/failures.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:image_picker/image_picker.dart';

class Photo extends ValueObject<XFile> {
  static int maxHeight = 100;
  static int maxWidth = 320;

  @override
  final Either<ValueFailure<XFile>, XFile> value;
  factory Photo(XFile file) => Photo._(right(file));

  const Photo._(this.value);
}

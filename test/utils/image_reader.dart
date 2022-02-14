import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';

Future<File> getImageFileFromAssets(String name) async {
  TestWidgetsFlutterBinding.ensureInitialized();

  final byteData = await rootBundle.load('images/test/$name');

  final file = File('${(await getTemporaryDirectory()).path}/$name');
  await file.writeAsBytes(byteData.buffer
      .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

  return file;
}

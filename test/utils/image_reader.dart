import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';

Future<XFile> getImageFileFromAssets(String path) async {
  TestWidgetsFlutterBinding.ensureInitialized();

  final byteData = await rootBundle.load('images/test/test_logo.jpg');

  final file = File('${(await getTemporaryDirectory()).path}/$path');
  await file.writeAsBytes(byteData.buffer
      .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

  final image = XFile.fromData(file.readAsBytesSync());

  return image;
}

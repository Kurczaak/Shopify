import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider/path_provider.dart';

Future<File> getImageFileFromAssets(String name) async {
  TestWidgetsFlutterBinding.ensureInitialized();

  final byteData = await rootBundle.load('images/test/$name');

  final file = File('${(await getTemporaryDirectory()).path}/$name');
  await file.writeAsBytes(byteData.buffer
      .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

  return file;
}

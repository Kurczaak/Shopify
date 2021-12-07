import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/injection.dart';
import 'presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}

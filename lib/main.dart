import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/injection.dart';
import 'presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}

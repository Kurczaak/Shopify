import 'package:algolia/algolia.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_presentation/shopify_presentation.dart';
import 'presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';

const apiKey = 'AIzaSyBRHgoftuVTC-QyB8BXxRiMSZUdkXk_am8';
const appId = '1:574549474444:android:607cf78549ef101e040fa9';
const messagingSenderId = '574549474444';
const projectId = 'shopify-app-6d29d';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: apiKey,
      appId: appId,
      messagingSenderId: messagingSenderId,
      projectId: projectId,
    ),
  );

  const Algolia _algoliaClient = Algolia.init(
      applicationId: "7UL8NHCSW8", apiKey: "b34d020770f200190fe3ae5d4164e4c5");

  getIt.registerLazySingleton<Algolia>(() => _algoliaClient);
  ShopifyDomain.initialize;
  ShopifyPresentation.initialize;
  configureInjection(Environment.prod);
  runApp(AppWidget());
}

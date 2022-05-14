import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/injection.config.dart';
import 'package:shopify_domain/injection.dart';

late GetIt getIt;

@injectableInit
void configureXDInjection(String env) {
  getIt = configureInjection(env);
  $initGetIt(getIt, environment: env);
}

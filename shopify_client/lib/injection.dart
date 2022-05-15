import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/injection.config.dart';

late GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}

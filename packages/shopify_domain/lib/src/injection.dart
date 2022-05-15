import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/src/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
GetIt configureInjection(String env) {
  return $initGetIt(getIt, environment: env);
}

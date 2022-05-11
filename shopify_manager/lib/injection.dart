import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:shopify_manager/injection.config.dart';
import 'package:shopify_manager/presentation/routes/router.gr.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
  getIt.registerSingleton<AppRouter>(AppRouter());
}

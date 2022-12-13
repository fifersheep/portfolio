import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies(String env) => getIt.init(environment: env);

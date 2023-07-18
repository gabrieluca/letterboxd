import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'dependencies.config.dart';

final dependencies = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
Future<void> initDependencies() async {
  dependencies.init();
  await dependencies.allReady();
}

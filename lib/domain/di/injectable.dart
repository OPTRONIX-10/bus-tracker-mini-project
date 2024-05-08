import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/di/injectable.config.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configureInjuction() async {
  getIt.init(environment: Environment.prod);
}

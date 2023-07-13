import 'package:chat_app/routes/routes.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I;

void registerClasses() {
  locator.registerFactory<AppRouter>(() => AppRouter());
}

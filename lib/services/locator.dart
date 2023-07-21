import 'package:chat_app/routes/routes.dart';
import 'package:chat_app/services/auth_services/user_auth.dart';
import 'package:chat_app/services/db_services/message_db_methods.dart';
import 'package:chat_app/services/db_services/user_db_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I;

void registerClasses() {
  locator.registerFactory<AppRouter>(() => AppRouter());
  locator
      .registerFactory<FirebaseAuthentication>(() => FirebaseAuthentication());
  locator.registerFactory<UserDBMethods>(() => UserDBMethods());
  locator.registerFactory<MessageDBMethods>(() => MessageDBMethods());
  locator.registerFactory<FirebaseAuth>(() => FirebaseAuth.instance);
}

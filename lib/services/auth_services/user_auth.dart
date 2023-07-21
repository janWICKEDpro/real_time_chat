import 'package:chat_app/services/locator.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future signIn() async {
    //Sign in with email link
    locator<FirebaseAuth>();
  }
}

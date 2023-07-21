import 'package:chat_app/models/user.dart';
import 'package:chat_app/services/locator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserDBMethods {
  //add a new user to the database
  Future<User?> addUser(User user) async {
    try {
      await locator<FirebaseFirestore>().collection('Users').add(user.toJson());
      return user;
    } catch (e) {
      //notify error handler
      return null;
    }
  }

  //create a new contact
  Future addContact(String myID, String contactID) async {}

  //searches the database for contacts if not found on local storage
  // Future<User> searchContacts(String contactName) async {}

  //delete contact
  Future deleteContact(String contactId) async {}

  //get a list of all a users contacts.
  // Future<List<User>> getContacts(String myId) async {}
}

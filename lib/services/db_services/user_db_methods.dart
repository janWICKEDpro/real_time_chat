import 'package:chat_app/models/user.dart';

class UserDBMethods {
  //add a new user to the database
  Future addUser(User user) async {}

  //create a new contact
  Future addContact(String myID, String contactID) async {}

  //searches the database for contacts if not found on local storage
  // Future<User> searchContacts(String contactName) async {}

  //delete contact
  Future deleteContact(String contactId) async {}

  //get a list of all a users contacts.
  // Future<List<User>> getContacts(String myId) async {}
}

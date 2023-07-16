import 'package:chat_app/models/user.dart';

class Contacts {
  Contacts({this.myId, this.contactId});
  String? myId;
  String? contactId;
  User? contact;

  Map<String, String?> toJson() {
    return {
      'myId': myId,
      'contactId': contactId,
    };
  }

  factory Contacts.fromJson(Map<String, String?> contact) {
    return Contacts(
      myId: contact['myId'],
      contactId: contact['contactId'],
    );
  }
}

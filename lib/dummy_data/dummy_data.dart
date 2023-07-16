import 'package:chat_app/models/contacts.dart';
import 'package:chat_app/models/message.dart';

List<Message> messages = [
  Message(
    id: '1',
    content: 'Hello How are you',
    receiverId: '2',
    senderId: '3',
    timeSent: DateTime.now(),
  ),
  Message(
    id: '2',
    content: 'Fine and you?',
    receiverId: '3',
    senderId: '2',
    timeSent: DateTime.now(),
  ),
  Message(
    id: '3',
    content: 'I am alright thanks i wanted to find out about the manatees',
    receiverId: '2',
    senderId: '3',
    timeSent: DateTime.now(),
  ),
  Message(
    id: '4',
    content: 'THey died',
    receiverId: '3',
    senderId: '2',
    timeSent: DateTime.now(),
  ),
  Message(
    id: '5',
    content: 'Hello How are you',
    receiverId: '2',
    senderId: '3',
    timeSent: DateTime.now(),
  ),
];

List<Contacts> contacts = [];

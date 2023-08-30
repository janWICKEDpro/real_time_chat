import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SendMessageField extends StatefulWidget {
  const SendMessageField({super.key});

  @override
  State<SendMessageField> createState() => _SendMessageFieldState();
}

class _SendMessageFieldState extends State<SendMessageField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.grey[200],
      child: Row(
        children: [
          const Row(
            children: [
              Icon(
                Icons.image,
                color: Color.fromARGB(255, 21, 61, 95),
              ),
              Icon(FontAwesomeIcons.ellipsisVertical,
                  color: Color.fromARGB(255, 21, 61, 95)),
              Icon(Icons.camera_alt, color: Color.fromARGB(255, 21, 61, 95)),
            ],
          ),
          Expanded(
            child: TextField(
              controller: TextEditingController(),
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  border: InputBorder.none,
                  hintText: 'Type to start chat'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 21, 61, 95)),
              child: Center(
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_sharp,
                      color: Colors.white),
                  onPressed: () {
                    setState(() {
                      // messagesList.add(Message(
                      //     date: DateTime.now(),
                      //     text: messageController.text,
                      //     isSentByMe: false));
                      // messageController.clear();
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

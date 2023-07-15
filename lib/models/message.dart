class Message {
  Message(
      {this.id,
      this.content,
      this.receiverId,
      this.senderId,
      this.timeSent,
      this.imageUrl,
      this.hasImage});
  String? id;
  String? senderId;
  String? receiverId;
  String? content;
  String? imageUrl;
  bool? hasImage;
  DateTime? timeSent;

  Map<String, dynamic> toJson() {
    return {
      'senderId': senderId,
      'receiverId': receiverId,
      'content': content,
      'hasImage': hasImage,
      'imageUrl': imageUrl,
      'timeSent': timeSent
    };
  }

  factory Message.fromJson(Map<String, dynamic> message) {
    return Message(
      id: message['id'] as String,
      senderId: message['senderId'] as String,
      receiverId: message['receiverId'] as String,
      content: message['content'] as String,
      hasImage: message['hasImage'] as bool,
      imageUrl: message['imageUrl'] as String,
      timeSent: message['timeSent'] as DateTime,
    );
  }

  @override
  String toString() {
    return 'Message(id: $id, senderId: $senderId, receiverId: $receiverId, content: $content, timeSent: $timeSent, hasImage: $hasImage, imageUrl: $imageUrl)';
  }
}

import 'package:flutter/material.dart';
import 'package:mate_vibes/feature/chat/chat_details_page.dart';
import 'package:mate_vibes/feature/chat/models/chat_msg.dart';

class ChatBubble extends StatefulWidget {
  ChatMessage chatMessage;
  ChatBubble({required this.chatMessage});

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Align(
        alignment: (widget.chatMessage.type == MessageType.Reciever
            ? Alignment.topLeft
            : Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: (widget.chatMessage.type == MessageType.Reciever
                ? Colors.white
                : Colors.grey.shade200),
          ),
          padding: EdgeInsets.all(16),
          child: Text(widget.chatMessage.message),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/info.dart';
import 'package:whatsapp_ui/widgets/mymessages_card.dart';
import 'package:whatsapp_ui/widgets/sendermessages_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context,index){
        if(messages[index]["isMe"]==true){
          //My messages
          return MyMessagesCard(
            message: messages[index]["text"].toString(), 
            date: messages[index]["time"].toString());
        }
        return SenderMessagesCard(
            message: messages[index]["text"].toString(), 
            date: messages[index]["time"].toString());
        //Sender Messages
      });
  }
}
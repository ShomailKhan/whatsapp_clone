import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helper_widgets/recievercard.dart';
import 'package:whatsapp_clone/helper_widgets/sendercard.dart';
import 'package:whatsapp_clone/utils/info.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        var messageIndex = messages[index];
        if(messageIndex['isMe'] == true){
          return Recievercard(
            message: messageIndex['text'] as String,
            time: messageIndex['time'] as String,
          );
        }else{
          return Sendercard(
            message: messageIndex['text'] as String,
            time: messageIndex['time'] as String,
          );
        }
      },
    );
  }
}
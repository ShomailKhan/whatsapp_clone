import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helper_widgets/chatlist.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'] as String),
        centerTitle: false,
        actions: [
          Icon(Icons.videocam),
          SizedBox(width: 10),
          Icon(Icons.call),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Chatlist()),
          Container(
                  height: MediaQuery.of(context).size.height * 0.085,
                  color: appBarColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.emoji_emotions),
                        SizedBox(width: 10),
                        Icon(Icons.attach_file),
                        SizedBox(width: 10),                       
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'enter your message',
                              prefixIcon: Icon(Icons.search),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: searchBarColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: searchBarColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),                       
                        Icon(Icons.mic),
                      ],
                    ),
                  ),
                ),
        ],
      )
    );
  }
}
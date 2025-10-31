import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helper_widgets/chatlist.dart';
import 'package:whatsapp_clone/helper_widgets/contactlist.dart';
import 'package:whatsapp_clone/helper_widgets/web_chat_appbar.dart';
import 'package:whatsapp_clone/helper_widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/helper_widgets/web_searchbar.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class Webscreen extends StatelessWidget {
  const Webscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                WebProfileBar(),
                WebSearchbar(),
                Expanded(child: Contactlist()),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/backgroundImage.png'),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              children: [
                WebChatAppbar(),
                Expanded(child: Chatlist()),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
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
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

import '../utils/info.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.085,
      decoration: BoxDecoration(
        color: webAppBarColor,
        border: Border(
          left: BorderSide(
            width: 6,
            color: webAppBarColor
          )
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(info[0]['profilePic'] as String),
            ),
            Row(
              children: [
                Icon(Icons.video_collection_outlined),
                SizedBox(width: 10),
                Icon(Icons.phone),
                SizedBox(width: 10),
                Icon(Icons.more_vert),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

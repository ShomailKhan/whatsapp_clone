import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helper_widgets/mobile_chat_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/info.dart';

class Contactlist extends StatelessWidget {
  const Contactlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: info.length,
      itemBuilder: (context, index) {
        var infoIndex = info[index];
        return InkWell(
          onTap: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => MobileChatScreen()));
          },
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    infoIndex['profilePic'] as String,
                  ),
                ),
                title: Text(infoIndex['name'] as String),
                subtitle: Text(infoIndex['message'] as String),
                trailing: Text(infoIndex['time'] as String),
              ),
              Divider(color: dividerColor, height: 0.01),
            ],
          ),
        );
      },
    );
  }
}

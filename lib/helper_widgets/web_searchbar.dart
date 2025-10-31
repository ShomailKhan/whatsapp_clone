import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class WebSearchbar extends StatelessWidget {
  const WebSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.085,
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'search or start a new chat',
            prefixIcon: Icon(Icons.search),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: textColor
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: textColor
              )
            )
          ),
        ),
      )
    );
  }
}

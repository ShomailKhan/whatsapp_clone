// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key,required this.labelName, required this.hintTextMessage,required this.controllerType});
  final labelName;
  final hintTextMessage;
  final controllerType;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: textColor),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: TextField(
        controller: controllerType,
        decoration: InputDecoration(
          labelText: labelName,
          hintText: hintTextMessage,
          enabledBorder: border,
          focusedBorder: border,
        ),
      ),
    );
  }
}

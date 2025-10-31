// ignore_for_file: unused_local_variable, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helper_widgets/userinfo.dart' as local_userinfo;
import 'package:whatsapp_clone/utils/colors.dart';

class AddNewContact extends StatefulWidget {
  const AddNewContact({super.key});

  @override
  State<AddNewContact> createState() => _AddNewContactState();
}

class _AddNewContactState extends State<AddNewContact> {
  final nameCtrl = TextEditingController();
  final messageCtrl = TextEditingController();
  final timeCtrl = TextEditingController();
  final imageCtrl = TextEditingController();

  @override
  void dispose() {
    nameCtrl.dispose();
    messageCtrl.dispose();
    timeCtrl.dispose();
    imageCtrl.dispose();
    super.dispose();
  }
  Future<void> addDataToFireStore() async{
    try{
    final userCredential  = await FirebaseFirestore.instance.collection('info').add(
      {
    'name': nameCtrl,
    'message': messageCtrl,
    'time': timeCtrl,
    'profilePic': imageCtrl,
  }
    );
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("task added successfully")));
    }catch(e){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
    }
  }
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: textColor
                )
              );
    return Scaffold(
      appBar: AppBar(
        title: Text("adding a new contact"),
        centerTitle: false,
      ),
      body: Padding(padding: EdgeInsetsGeometry.all(15),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            local_userinfo.UserInfo(labelName: 'name', hintTextMessage: 'enter your name', controllerType: nameCtrl),
            local_userinfo.UserInfo(labelName: 'message', hintTextMessage: 'enter your message', controllerType: messageCtrl),
            local_userinfo.UserInfo(labelName: 'time', hintTextMessage: 'eg 12:06 pm', controllerType: timeCtrl),
            local_userinfo.UserInfo(labelName: 'image', hintTextMessage: 'enter your image URL', controllerType: imageCtrl),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
              backgroundColor: appBarColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              )
            ),
             child: Text('create', style: TextStyle(color: textColor, fontSize: 20),))
          ],
        ),
      ),),
    );
  }
}

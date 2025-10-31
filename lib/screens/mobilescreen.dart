import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/helper_widgets/add_new_contact.dart';
import 'package:whatsapp_clone/helper_widgets/contactlist.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class Mobilescreen extends StatelessWidget {
  const Mobilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text('WhatsApp'),
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Sign Out'),
                      content: Text('are you sure to log out?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'no',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'yes',
                            style: TextStyle(color: Colors.greenAccent),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: Icon(Icons.logout),
            ),
            SizedBox(width: 10),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            indicatorColor: tabColor,
            labelColor: tabColor,
            dividerColor: tabColor,
            tabs: [
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: Contactlist(),
        floatingActionButton: FloatingActionButton(
          tooltip: "add a new contact",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewContact()));
          },
          backgroundColor: tabColor,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

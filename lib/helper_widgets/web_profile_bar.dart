import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import '../utils/info.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.085,
      color: appBarColor,
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
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/helper_widgets/layouts.dart';
import 'package:whatsapp_clone/screens/login_screen.dart';
import 'package:whatsapp_clone/screens/mobilescreen.dart';
import 'package:whatsapp_clone/screens/webscreen.dart';
import 'package:whatsapp_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: backgroundColor,
        textTheme: ThemeData.dark().textTheme.apply(fontFamily: 'outfit'),
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator.adaptive();
          }
          if (snapshot.data != null) {
            return Layouts(
              mobileScreenLayout: Mobilescreen(),
              webScreenLayout: Webscreen(),
            );
          }else{
            return LoginScreen();
          }
        },
      ),
    );
  }
}

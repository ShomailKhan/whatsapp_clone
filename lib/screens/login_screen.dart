// ignore_for_file: unused_local_variable, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> loginUserWithEmailAndPassword() async {
    try {
      final userCredentials = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('login successful')));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('${e.message}')));
    }
  }

  @override
  Widget build(BuildContext context) {
      var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey, width: 2),
    );
    var spacing = MediaQuery.of(context).size.height * 0.08;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log In',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Welcome back !! Please enter your details',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Container(height: spacing),
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: Theme.of(context).textTheme.titleSmall,
                      hintText: 'enter your mail',
                      prefixIcon: Icon(Icons.email),
                      iconColor: Colors.grey,
                      contentPadding: EdgeInsets.all(15),
                      hintStyle: Theme.of(context).textTheme.titleSmall,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: Theme.of(context).textTheme.titleSmall,
                      hintText: 'enter your password',
                      prefixIcon: Icon(Icons.password),
                      iconColor: Colors.grey,
                      contentPadding: EdgeInsets.all(15),
                      hintStyle: Theme.of(context).textTheme.titleSmall,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                  Container(height: spacing),
                  ElevatedButton(
                    onPressed: () async {
                      await loginUserWithEmailAndPassword();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      fixedSize: Size( MediaQuery.of(context).size.width * 1, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: Theme.of(context).textTheme.titleSmall,
                        children: [
                          TextSpan(
                            text: 'Sign Up',
                            style: Theme.of(context).textTheme.titleSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

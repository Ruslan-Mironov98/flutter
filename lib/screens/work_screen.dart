import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:postit_app/screens/account_screen.dart';
import 'package:postit_app/screens/login_screen.dart';
import 'package:postit_app/vars/colors.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('postIT', style: TextStyle(color: Colors.white)),

        backgroundColor: backgroundColor,

        actions: [
          IconButton(
            onPressed: () {
              if ((user == null)) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccountScreen()),
                );
              }
            },
            icon: Icon(
              Icons.person,
              color: (user == null) ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child:  const Text('Создайте заметку'),
          ),
      ),
    );
  }
}
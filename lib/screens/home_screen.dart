import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:postit_app/screens/account_screen.dart';
import 'package:postit_app/screens/login_screen.dart';
//import 'package:postit_app/screens/reset_password_screen.dart';
import 'package:postit_app/vars/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          child: (user == null)
              ? const Text("Для начала работы необходимо войти или зарегирироваться")
              : const Text('Контент для ЗАРЕГИСТРИРОВАННЫХ в системе'),
          //child: Text('Контент для НЕ зарегистрированных в системе'),
        ),
      ),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chatting/screens/welcome_screen.dart';
import 'package:chatting/screens/login_screen.dart';
import 'package:chatting/screens/registration_screen.dart';
import 'package:chatting/screens/chat_screen.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute:WelcomeScreen.id ,
      routes:{
        WelcomeScreen.id :(context)=>WelcomeScreen(),
        ChatScreen.id:(context)=>ChatScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id :(context)=>RegistrationScreen()


    }
    );
  }
}

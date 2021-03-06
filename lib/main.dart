import 'package:flutter/material.dart';
import 'package:spot_hot/screens/welcome_screen.dart';
import 'package:spot_hot/screens/login_screen.dart';
import 'package:spot_hot/screens/registration_screen.dart';
import 'package:spot_hot/screens/chat_screen.dart';
import 'package:spot_hot/screens/home.dart';
import 'package:spot_hot/screens/property_screen.dart';
import 'package:spot_hot/screens/new_search_screen.dart';

void main() => runApp(SpotHot());

class SpotHot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        Home.id: (context) => Home(),
        PropertyScreen.id: (context) => PropertyScreen(),
        SearchNew.id: (context) => SearchNew(),
      },
    );
  }
}

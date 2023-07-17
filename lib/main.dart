import 'package:flutter/material.dart';
import 'package:gladcon/src/screens/home/home.dart';
import 'package:gladcon/src/screens/login/login_screen.dart';
import 'package:gladcon/src/widgets/card_menu.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glandcon ra',
      initialRoute: '/',
      routes: {
        '/':(context) => const HomeScreen(),
        '/home':(context)=> const LoginScreen()
      },
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.deepOrangeAccent)
      ),
      debugShowCheckedModeBanner: false,
    
    );
  }
}

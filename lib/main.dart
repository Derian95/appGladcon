import 'package:flutter/material.dart';
import 'package:gladcon/src/screens/home/home.dart';
import 'package:gladcon/src/screens/login/login_screen.dart';

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
        '/':(context) => const LoginScreen(),
        '/home':(context)=> const HomeScreen()
      },
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.deepOrangeAccent)
      ),
      debugShowCheckedModeBanner: false,
    
    );
  }
}

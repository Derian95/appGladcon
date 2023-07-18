import 'package:flutter/material.dart';
import 'package:gladcon/src/screens/alert/alert.dart';
import 'package:gladcon/src/screens/assistance/assistance.dart';
import 'package:gladcon/src/screens/assistanceManual/manual_assistance.dart';
import 'package:gladcon/src/screens/census/census.dart';
import 'package:gladcon/src/screens/control/control.dart';
import 'package:gladcon/src/screens/health/health.dart';
import 'package:gladcon/src/screens/home/home.dart';
import 'package:gladcon/src/screens/login/login_screen.dart';
import 'package:gladcon/src/screens/visit/visit.dart';

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
        '/home':(context)=> const HomeScreen(),
        '/assistance':(context)=> const AssistanceScreen(),
        '/manualAssistance':(context)=> const ManualAssistanceScreen(),
        '/visit':(context)=> const VisitScreen(),
        '/alert':(context)=> const AlertScreen(),
        '/control':(context)=> const ControlScreen(),
        '/census':(context)=> const CensusScreen(),
        '/health':(context)=> const HealthScreen(),
      },
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.deepOrangeAccent)
      ),
      debugShowCheckedModeBanner: false,
    
    );
  }
}

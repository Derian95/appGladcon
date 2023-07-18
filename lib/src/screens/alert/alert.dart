import 'package:flutter/material.dart';
import 'package:gladcon/src/widgets/custom_app_bar.dart';


class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'GladconApp',
      ),
      body:  Text('Alerta'),
    );
  }
}
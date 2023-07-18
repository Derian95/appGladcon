import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';


class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});
@override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'GladconApp',
      ),
      body:  Text('Salud'),
    );
  }
}
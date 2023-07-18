import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';


class ControlScreen extends StatelessWidget {
  const ControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'GladconApp',
      ),
      body: Text('ControlAcceso'),
    );
  }
}
import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';


class CensusScreen extends StatelessWidget {
  const CensusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'GladconApp',
      ),
      body: Text('Empadronamiento'),
    );
  }
}
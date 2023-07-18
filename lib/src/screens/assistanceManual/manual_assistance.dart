import 'package:flutter/material.dart';
import 'package:gladcon/src/widgets/custom_app_bar.dart';
class ManualAssistanceScreen extends StatelessWidget {
  const ManualAssistanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'GladconApp'),
    );
  }
}
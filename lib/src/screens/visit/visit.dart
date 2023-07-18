import 'package:flutter/material.dart';
import 'package:gladcon/src/widgets/custom_app_bar.dart';


class VisitScreen extends StatefulWidget {
  const VisitScreen({super.key});

  @override
  State<VisitScreen> createState() => _VisitScreenState();
}

class _VisitScreenState extends State<VisitScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'GladconApp',
      ),
    );
  }
}
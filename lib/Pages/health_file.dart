import 'package:flutter/material.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';

class HealthScreen extends StatefulWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:AccentColor,
        title: Text("Health",),
      ),
    );
  }
}

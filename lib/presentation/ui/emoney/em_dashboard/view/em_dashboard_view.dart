import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

class EmDashboardView extends StatefulWidget {
  const EmDashboardView({super.key});

  Widget build(context, EmDashboardController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Em Dashboard"),
        actions: const [],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }

  @override
  State<EmDashboardView> createState() => EmDashboardController();
}

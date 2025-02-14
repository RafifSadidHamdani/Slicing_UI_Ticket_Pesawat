import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

class TvDashboardView extends StatefulWidget {
  const TvDashboardView({super.key});

  Widget build(context, TvDashboardController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tv Dashboard"),
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
  State<TvDashboardView> createState() => TvDashboardController();
}

import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

class TvBookingDetailView extends StatefulWidget {
  const TvBookingDetailView({super.key});

  Widget build(context, TvBookingDetailController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tv Booking Detail"),
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
  State<TvBookingDetailView> createState() => TvBookingDetailController();
}
